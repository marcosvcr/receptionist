import roslib; roslib.load_manifest("hbba_synth")
from structure import *
from file_parser import FileParser
from deps_parser import DepsParser
from optparse import OptionParser
import os

def main():
    opt_parser = OptionParser(usage="usage: %prog [options] file1 [file2, ...]")
    opt_parser.add_option("-o", "--output", dest="basename",
            default="./hbba_struct", 
            help="defines the base name for the produced files (default: %default)", 
            metavar="DIRECTORY")
    opt_parser.add_option("-n", "--new-rev", action="store_true",
            dest="new_rev", default=True,
            help="Use the new revision of the IW Solver (legacy option, now default.")
    opt_parser.add_option("--old-rev", action="store_false",
            dest="new_rev",
            help="Use the old revision of the IW Solver (no longer maintained).",)
    opt_parser.add_option("-m", "--model-only", action="store_true",
            dest="model_only", default=False,
            help="Only output the IW model (new revision only).")
    opt_parser.add_option("-a", "--disable-arbitration", action="store_true",
            dest="disable_arbitration", default=False,
            help="arbitration nodes are not generated for behavior output topics.")
    opt_parser.add_option("-e", "--no-base-nodes", action="store_true",
            dest="no_base_nodes", default=False,
            help="'external' mode, does not add HBBA base nodes to launch file (default: %default).")
    opt_parser.add_option("--no-event-generators", action="store_true",
            dest="no_event_gen", default=False,
            help="Does not automatically include base event generators (default: %default).")
    opt_parser.add_option("-i", "--includes", action="store_true",
            dest="includes", default=False,
            help="only output the list of included files.")
    opt_parser.add_option("-d", "--debug", action="store_true",
            dest="debug", default=False,
            help="debug mode for HBBA base nodes (default: %default)")
    opt_parser.add_option("-p", "--pretty", action="store_true",
            dest="pretty", default=False,
            help="more human-readable XML output")
    opt_parser.add_option("-b", "--behavior-based", action="store_true",
            dest="behavior_based", default=False,
            help="generate a purely behavior-based structure (no IW or filters)")
    opt_parser.add_option("-v", "--verbose", action="store_true",
            dest="verbose", default=False,
            help="verbose output")
    
    (opts, args) = opt_parser.parse_args()

    if len(args) < 1:
        opt_parser.error("Requires at least one input file")
        exit(-1)

    structure = Structure()

    for f in args:
        structure.setSourcePath(os.path.dirname(f))
        if (opts.includes):
            p = DepsParser(f, structure)
        else:
            p = FileParser(f, structure)

        p.parse(opts.verbose)

    structure.generate(opts.basename, opts)


