Requirements:
 
- Necessary installation:
  * Ros Melodic (http://wiki.ros.org/melodic/Installation/Ubuntu)
  * DLIB (https://github.com/ageitgey)
  * OPENCV Binary Package (https://docs.opencv.org/)
  * HBBA (https://github.com/francoisferland/HBBA)

Procedures:
- Create a catkin_workspace
- Copy and paste the folders “recep” and “hbba” into src.
- Run the command source devel/setup.bash
- Build with catkin_make

After building and installing all the dependencies, run the following commands in different terminals:
	- roslaunch recep_hbba_cfg rcep_camera.launch
	- roslaunch recep_hbba_cfg recep_start.launch
	- rosrun iw_tools iw_console

After opening the iw_console, type the command 

	> InteractionPlanner
To finish the application:
	> quit


Notes:
	If you have issues to build the HBBA, clone the repository from HBBA and replace the launchers and config files inside the turtlebot folder.
