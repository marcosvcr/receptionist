execute_process(COMMAND "/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/build/hbba/hbba_base/hbba_synth/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/drvc/Documentos/New_ROS_Project/catkin_recepcionist/build/hbba/hbba_base/hbba_synth/catkin_generated/python_distutils_install.sh) returned error code ")
endif()