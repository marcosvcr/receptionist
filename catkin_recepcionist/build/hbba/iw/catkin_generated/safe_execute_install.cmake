execute_process(COMMAND "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/build/hbba/iw/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/build/hbba/iw/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
