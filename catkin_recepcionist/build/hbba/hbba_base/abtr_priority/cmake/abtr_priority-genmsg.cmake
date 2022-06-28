# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "abtr_priority: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(abtr_priority_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv" NAME_WE)
add_custom_target(_abtr_priority_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abtr_priority" "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(abtr_priority
  "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abtr_priority
)

### Generating Module File
_generate_module_cpp(abtr_priority
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abtr_priority
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(abtr_priority_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(abtr_priority_generate_messages abtr_priority_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv" NAME_WE)
add_dependencies(abtr_priority_generate_messages_cpp _abtr_priority_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abtr_priority_gencpp)
add_dependencies(abtr_priority_gencpp abtr_priority_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abtr_priority_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(abtr_priority
  "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abtr_priority
)

### Generating Module File
_generate_module_eus(abtr_priority
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abtr_priority
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(abtr_priority_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(abtr_priority_generate_messages abtr_priority_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv" NAME_WE)
add_dependencies(abtr_priority_generate_messages_eus _abtr_priority_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abtr_priority_geneus)
add_dependencies(abtr_priority_geneus abtr_priority_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abtr_priority_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(abtr_priority
  "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abtr_priority
)

### Generating Module File
_generate_module_lisp(abtr_priority
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abtr_priority
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(abtr_priority_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(abtr_priority_generate_messages abtr_priority_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv" NAME_WE)
add_dependencies(abtr_priority_generate_messages_lisp _abtr_priority_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abtr_priority_genlisp)
add_dependencies(abtr_priority_genlisp abtr_priority_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abtr_priority_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(abtr_priority
  "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abtr_priority
)

### Generating Module File
_generate_module_nodejs(abtr_priority
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abtr_priority
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(abtr_priority_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(abtr_priority_generate_messages abtr_priority_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv" NAME_WE)
add_dependencies(abtr_priority_generate_messages_nodejs _abtr_priority_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abtr_priority_gennodejs)
add_dependencies(abtr_priority_gennodejs abtr_priority_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abtr_priority_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(abtr_priority
  "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abtr_priority
)

### Generating Module File
_generate_module_py(abtr_priority
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abtr_priority
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(abtr_priority_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(abtr_priority_generate_messages abtr_priority_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/abtr_priority/srv/RegisterBehavior.srv" NAME_WE)
add_dependencies(abtr_priority_generate_messages_py _abtr_priority_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abtr_priority_genpy)
add_dependencies(abtr_priority_genpy abtr_priority_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abtr_priority_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abtr_priority)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abtr_priority
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(abtr_priority_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abtr_priority)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abtr_priority
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(abtr_priority_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abtr_priority)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abtr_priority
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(abtr_priority_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abtr_priority)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abtr_priority
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(abtr_priority_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abtr_priority)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abtr_priority\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abtr_priority
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(abtr_priority_generate_messages_py std_msgs_generate_messages_py)
endif()
