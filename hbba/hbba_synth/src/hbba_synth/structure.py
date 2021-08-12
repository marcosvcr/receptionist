from definitions import *
from xml.etree.ElementTree import ElementTree, Element, tostring 
from xml.dom import minidom
from sets import Set
import os
import stat
import json

# Some constant expressions that are formatted later:

python_header_common = """#!/usr/bin/env python

import roslib
import rospy
from hbba_msgs.msg import *
from hbba_msgs.srv import *
from emotions_msgs.msg import Intensity

import os
import sys

if ("-c" in sys.argv):
    if (os.fork() == 0):
        os.system("roslaunch {0}")
        sys.exit(0)

rospy.init_node("hbba_struct", anonymous=True)

rospy.wait_for_service("hbba/add_desires", 30.0)
add_desires = rospy.ServiceProxy("hbba/add_desires", AddDesires)

pubEmoIntensity = rospy.Publisher("{1}", 
                                  Intensity,
                                  latch=True,
                                  queue_size=1)

"""

python_header_model = """
rospy.wait_for_service("hbba/add_strategy", 1.0)
add_strat = rospy.ServiceProxy("hbba/add_strategy", AddStrategy)

rospy.wait_for_service("hbba/set_resource_max", 1.0)
set_resource_max = rospy.ServiceProxy("hbba/set_resource_max", SetResourceMax)

rospy.wait_for_service("hbba/eval_script", 1.0)
eval_script = rospy.ServiceProxy("hbba/eval_script", EvalScript)

"""

exploitation_match_sp = """
rospy.wait_for_service("hbba/create_exploitation_matcher", 1.0)
create_em = rospy.ServiceProxy("hbba/create_exploitation_matcher", CreateExploitationMatcher)
"""
exploitation_match_elem = """ExploitationMatch({0}, {1})"""
exploitation_match_call = """
create_em('{0}', {1})"""

def baseNodesXML(new_rev, debug):
    fname = "base_nodes"
    if (new_rev):
        fname = fname + "_r2"
    if debug:
        fname = fname + "_debug"
    fname = fname + ".launch"

    e = Element("include", attrib = {
        'file': "$(find hbba_synth)/launch/{0}".format(fname)})
    return e

def eventNodesXML():
    e = Element("include", attrib = {
        'file': "$(find hbba_synth)/launch/base_events.launch"})
    return e


class Structure:
    def __init__(self):
        self.includes = []
        self.behaviors = {}
        self.behaviorOutputs = {}
        self.procmodules = {}
        self.strategies = {}
        self.filters = {}
        self.filterTypes = {}
        self.exploitationMatches = {}
        self.resources = {}
        self.rootRemaps = {}
        self.desires = {}
        self.arbitrationTypes = {}
        self.integratedArbitration = {}
        self.motivations = {}
        self.emoIntensities = {}
        self.customScript = ""
        self.iwoRuleset = ""
        self.rootLaunch = []

        self.sourcePath = "."
    
    def setSourcePath(self, sp):
        # Starting point for finding include files if rospack fails.
        self.sourcePath = sp

    def getSourcePath(self):
        return self.sourcePath

    def addInclude(self, i):
        self.includes.append(i)

    def addBehavior(self, b):
        self.behaviors[b.name] = b

    def addBehaviorOutput(self, tin, tout):
        if not (tin in self.behaviorOutputs):
            self.behaviorOutputs[tin] = []
        self.behaviorOutputs[tin].append(tout)

    def addProcModule(self, p):
        self.procmodules[p.name] = p

    def addStrategy(self, s):
        self.strategies[s.name] = s

    def addFilter(self, f):
        self.filters[f.name] = f

    def addFilterType(self, ft):
        self.filterTypes[ft.name] = ft

    def addResource(self, r):
        self.resources[r.name] = r

    def addRootRemap(self, rm):
        self.addRootRemapEx(rm.to, rm.topic)

    def addRootRemapEx(self, to, topic):
        # Look if the remap target is already registered.
        # If so, map the incoming topic to the original target.
        if to in self.rootRemaps:
            self.rootRemaps[topic] = self.rootRemaps[to]
        else:
            self.rootRemaps[topic] = to

    def addDesire(self, d):
        self.desires[d.desire_id] = d

    def addArbitrationType(self, t):
        self.arbitrationTypes[t.topic] = t

    def addIntegratedArbitration(self, t):
        self.integratedArbitration[t] = True

    def addMotivation(self, m):
        self.motivations[m.name] = m

    def addEmoIntensity(self, e):
        self.emoIntensities[e.name] = e

    def addCustomScript(self, s):
        self.customScript += s + "\n"

    def addIWORuleset(self, s):
        self.iwoRuleset += s + "\n"

    def addRootLaunch(self, rl):
        self.rootLaunch.append(rl)

    def registerExploitationMatch(self, b, d):
        p = b.priority
        for o in b.output:
            if o not in self.exploitationMatches:
                self.exploitationMatches[o] = {}
            matches = self.exploitationMatches[o]
            if p not in matches:
                matches[p] = []
            matches[p].append(d)

    def generateExploitationMatchesPy(self):
        out = exploitation_match_sp
        for t, ms in self.exploitationMatches.iteritems():
            ems = "["
            ft = self.getRootTopicFullName(t)
            p = ms.keys()
            ds = ms.values()
            l = len(p)
            for i in range(0, l-1):
                ems += exploitation_match_elem.format(p[i], ds[i]) + ", "
            ems += exploitation_match_elem.format(p[l-1], ds[l-1]) + "]"
            out += exploitation_match_call.format(ft, ems)
        return out

    def generateExploitationMatchesXML(self, opts):
        if (opts.verbose):
            print "Generating static set of exploitation matches..."

        matches = []
        for t, ms in self.exploitationMatches.iteritems():
            topic_name = self.getRootTopicFullName(t)
            p_dt = []
            for p, dt in ms.iteritems():
                p_dt.append({'priority': p, 'desire_type': dt})
            match = {'topic_name':  topic_name, 'matches': p_dt}
            matches.append(match)
        out = {'hbba': {'exploitation_matches': matches}}
        out_e = Element("rosparam")
        out_e.text = str(out)
        return out_e

    def getRootTopicFullName(self, topic):
        if topic in self.rootRemaps:
            return self.rootRemaps[topic]
        else:
            return '/' + topic

    def generateRootRemapXML(self, topic):
        if type(topic) is dict:
            iname = topic.keys()[0]
            oname = topic.values()[0]
        else:
            iname = topic
            oname = topic

        return Element("remap", attrib = {
            'from': iname,
            'to': self.getRootTopicFullName(oname)})

    def generateArbitrationXML(self, topic, machine, opts):
        if topic in self.arbitrationTypes:
            abtr_pkg = self.arbitrationTypes[topic].pkg
            abtr_type = self.arbitrationTypes[topic].node
        else:
            abtr_pkg = "abtr_priority"
            abtr_type = "GenericNodelet"

        root_topic = self.getRootTopicFullName(topic)
        node_name = "abtr_{0}".format(topic)
        n = Element("node", attrib = {
            'name': node_name,
            'pkg': 'nodelet',
            'type': 'nodelet',
            'args': "standalone {0}/{1}".format(abtr_pkg, abtr_type)
            })
        n.append(Element("remap", attrib = {
            'from': "abtr_cmd",
            'to': root_topic}))
        n.append(Element("remap", attrib = {
            'from': "priority",
            'to': "{0}/priority".format(root_topic)}))
        n.append(Element("remap", attrib = {
            'from': "cmd/register",
            'to': "{0}/register".format(root_topic)}))

        if machine != '':
            n.set('machine', machine)

        if (opts.new_rev):
            # Build behavior output registration model:
            s = {'registrations': self.behaviorOutputs[root_topic]}
            param_e = Element("rosparam")
            param_e.text = str(s)
            n.append(param_e)

        return [n]

    def solverModelXML(self, opts):
        if (opts.verbose):
            print "Generating static solver model as rosparams..."

        strats = []
        for strat in self.strategies.values():
            strats.append(strat.generateDict())

        caps = {}
        for r in self.resources.values():
            caps[r.name] = r.value

        s = {'hbba': {'solver_model': {
            'custom_script': self.customScript,
            'strategies': strats,
            'res_caps': caps
            }}}
        n = Element("rosparam")
        n.text = json.dumps(s)

        return n

    def topicFiltersXML(self, opts):
        if (opts.verbose):
            print "Generating static topic filters list..."

        tfs = {}
        for tf in self.filters.values():
            tfs[tf.name] = tf.type 
        
        n = Element("rosparam")
        n.text = str({'hbba': {'topic_filters': tfs}})

        return n

    def initialDesiresXML(self, opts):
        init_desires = []
        for d in self.desires.values():
            init_desires.append(d.generateJSON())
        n1 = Element("rosparam")
        n1.text = str({'hbba': {'initial_desires': init_desires}})

        n2 = Element("node", attrib = {
            'name': 'initial_desires_loader',
            'pkg': 'iw_tools',
            'type': 'load_desires'
            })

        return [n1, n2]

    def generate(self, basepath, opts):
        if (opts.includes):
            # Just print out includes and quit here - only used for dependency
            # queries.
            for i in self.includes:
                print i
            exit()

        verbose = opts.verbose
        # Analysis pass: Gather every behavior topics.
        behavior_topics = Set([])
        for b in self.behaviors.values():
            for o in b.output:
                behavior_topics.add((o, b.machine))
        if verbose:
            print "Behavior topics: " + str(behavior_topics)

        # Analysis pass: Register behavior priorities and strategies to the
        # exploitation matcher.
        # NOTE: Could be combined to the previous pass ?
        for s in self.strategies.values():
            u_class = s.utility_class
            for m in s.modules:
                module_name = m.module_name
                if module_name in self.behaviors:
                    bhvr = self.behaviors[module_name]
                    # Registration script is generated later:
                    self.registerExploitationMatch(bhvr, u_class)

        if verbose:
            print "Exploitation matches: " + str(self.exploitationMatches)
        
        # XML launch file, first pass
        # NOTE: Adding the elements also resolve dependencies such as filters
        # enumeration. This is not ideal, but necessary even if we don't use the
        # XML elements in model-only mode.
        launch_elem = Element("launch")

        # Always include included launch files first
        for rl in self.rootLaunch:
            launch_elem.extend(rl.generateXML(self))

        if (not opts.behavior_based):
            if (not opts.no_base_nodes):
                if verbose:
                    print "Adding base HBBA nodes"
                launch_elem.append(baseNodesXML(opts.new_rev, opts.debug))
            if (not opts.no_event_gen):
                if verbose:
                    print "Adding base event generators."
                launch_elem.append(eventNodesXML())

        main_elems = []
        for p in self.procmodules.values():
            main_elems.extend(p.generateXML(self, opts))
        for b in self.behaviors.values():
            main_elems.extend(b.generateXML(self, opts))
        if not opts.behavior_based:
            for m in self.motivations.values():
                main_elems.extend(m.generateXML(self))
        if not opts.disable_arbitration:
            for (t, m) in behavior_topics:
                if t not in self.integratedArbitration:
                    main_elems.extend(self.generateArbitrationXML(t, m, opts))

        if not opts.model_only:
            launch_elem.extend(main_elems)
        else:
            print "Generating output in model-only mode."

        # Python script and second XML generation pass
        if not opts.behavior_based:
            pyscript = ""
            if (self.customScript != ""):
                pyscript += "#Custom script:\n"
                pyscript += "eval_script(\"\"\" \n"
                pyscript += self.customScript
                pyscript += "\n\"\"\")\n\n"
            for e in self.emoIntensities.values():
                pyscript += e.generatePy()
            if not opts.new_rev:
                for s in self.strategies.values():
                    pyscript += s.generatePy()
                pyscript += "\n"
                for r in self.resources.values():
                    pyscript += r.generatePy()
                pyscript += "\n"
            for d in self.desires.values():
                pyscript += d.generatePy()
            pyscript += "\n"
            #if not opts.disable_arbitration:
            #    pyscript += "\n"
            #    pyscript += self.generateExploitationMatchesPy()

            pyscript += "\n\nprint \"Stop this script with Ctrl-C when ready.\"\n"
            pyscript += "rospy.spin()\n"

            if verbose:
                print "Generated Python script:\n"
                print pyscript
                print ""

            if not opts.model_only:
                pyfile_path = basepath + ".py"
                pyfile = file(pyfile_path, "w")
                pyfile.write(python_header_common.format(
                    os.path.join(os.getcwd(), basepath + ".launch"),
                    self.getRootTopicFullName("emo_intensity")))
                os.chmod(pyfile_path, os.stat(pyfile_path).st_mode | stat.S_IEXEC)
                if not opts.new_rev:
                    pyfile.write(python_header_model)

                pyfile.write(pyscript)
                pyfile.close()
                os.chmod(pyfile_path, 0777)

            # XML additions: 
            # The whole solver model as a rosparam:
            launch_elem.append(self.solverModelXML(opts))
            if not opts.model_only:
                # The static list of topic filters:
                launch_elem.append(self.topicFiltersXML(opts))
                # The static list of exploitation matches:
                launch_elem.append(self.generateExploitationMatchesXML(opts))
                # The static list of initial desires:
                launch_elem.extend(self.initialDesiresXML(opts))
            
            # The iw_observer ruleset as a rosparam:
            launch_elem.append(Element("param",
                name="/hbba/iw_observer/ruleset",
                value = self.iwoRuleset))

        elif verbose:
            print "Behavior-based mode - no Python script generated."

        # Final XML generation:
        launch_tree = ElementTree(launch_elem)
        xml_output = tostring(launch_elem)
        if opts.pretty:
            reparsed = minidom.parseString(xml_output)
            xml_output = reparsed.toprettyxml(indent="  ")

        if verbose:
            print "Generated XML:\n"
            print xml_output

        xmlfile = file(basepath + ".launch", "w")
        xmlfile.write(xml_output)

