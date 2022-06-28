# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hbba_msgs: 12 messages, 12 services")

set(MSG_I_FLAGS "-Ihbba_msgs:/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iemotions_msgs:/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/emotions_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hbba_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv" "hbba_msgs/Desire"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv" "hbba_msgs/ExploitationMatch"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv" "hbba_msgs/Desire"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg" "hbba_msgs/RosgraphEvent"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg" "hbba_msgs/ResourceUsage"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg" "hbba_msgs/Desire"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg" "hbba_msgs/ResourceUsage"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg" "emotions_msgs/Intensity"
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg" ""
)

get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg" NAME_WE)
add_custom_target(_hbba_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hbba_msgs" "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/emotions_msgs/msg/Intensity.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)

### Generating Services
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_cpp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
)

### Generating Module File
_generate_module_cpp(hbba_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hbba_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hbba_msgs_generate_messages hbba_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_cpp _hbba_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hbba_msgs_gencpp)
add_dependencies(hbba_msgs_gencpp hbba_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hbba_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/emotions_msgs/msg/Intensity.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_msg_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)

### Generating Services
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)
_generate_srv_eus(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
)

### Generating Module File
_generate_module_eus(hbba_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hbba_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hbba_msgs_generate_messages hbba_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_eus _hbba_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hbba_msgs_geneus)
add_dependencies(hbba_msgs_geneus hbba_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hbba_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/emotions_msgs/msg/Intensity.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_msg_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)

### Generating Services
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)
_generate_srv_lisp(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
)

### Generating Module File
_generate_module_lisp(hbba_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hbba_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hbba_msgs_generate_messages hbba_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_lisp _hbba_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hbba_msgs_genlisp)
add_dependencies(hbba_msgs_genlisp hbba_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hbba_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/emotions_msgs/msg/Intensity.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_msg_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)

### Generating Services
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)
_generate_srv_nodejs(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
)

### Generating Module File
_generate_module_nodejs(hbba_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hbba_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hbba_msgs_generate_messages hbba_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_nodejs _hbba_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hbba_msgs_gennodejs)
add_dependencies(hbba_msgs_gennodejs hbba_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hbba_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/emotions_msgs/msg/Intensity.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_msg_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)

### Generating Services
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)
_generate_srv_py(hbba_msgs
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv"
  "${MSG_I_FLAGS}"
  "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
)

### Generating Module File
_generate_module_py(hbba_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hbba_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hbba_msgs_generate_messages hbba_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterTopicExploitationMatches.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CreateExploitationMatcher.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvent.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/AddDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Event.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/UpdateRate.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/RosgraphEvents.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourceUsage.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ResourcesSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/Boolean.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/ExploitationMatch.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/EvalScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/CompileScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/DesiresSet.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RegisterExploitationMatch.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/EmotionIntensities.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RemoveDesires.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/SetDesireIntensity.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Intention.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/srv/RunScript.srv" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/IWTranslatorStatus.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_msgs/msg/Desire.msg" NAME_WE)
add_dependencies(hbba_msgs_generate_messages_py _hbba_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hbba_msgs_genpy)
add_dependencies(hbba_msgs_genpy hbba_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hbba_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hbba_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hbba_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET emotions_msgs_generate_messages_cpp)
  add_dependencies(hbba_msgs_generate_messages_cpp emotions_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hbba_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hbba_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET emotions_msgs_generate_messages_eus)
  add_dependencies(hbba_msgs_generate_messages_eus emotions_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hbba_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hbba_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET emotions_msgs_generate_messages_lisp)
  add_dependencies(hbba_msgs_generate_messages_lisp emotions_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hbba_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hbba_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET emotions_msgs_generate_messages_nodejs)
  add_dependencies(hbba_msgs_generate_messages_nodejs emotions_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hbba_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hbba_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET emotions_msgs_generate_messages_py)
  add_dependencies(hbba_msgs_generate_messages_py emotions_msgs_generate_messages_py)
endif()
