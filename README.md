# CONTROLLING A KUKA YOUBOT 
 
The solution discussed in this project aims to teach newcomers the kinematics of a robot, by controlling movements of a KUKA  youBot with the assistance of a graphical user interface (GUI).

## Development environment

Azure VM (Windows 11 PRO, 64 bit) is used as a developer environment, on which the necessary tools have been installed: 
- CoppeliaSim (EDU) simulating the robot movements. The software provides numerous out of the box scenes that developers simply drag and drop onto the simulation environment.
- MATLAB is used for writing scripts that are going to control the robot. 
- GUIDE is a built in tool in MATLAB that is used for building the GUI for the solution.

The following files are copied from MATLAB’s folders to the working directory: 
- remAPI.m 
- remoteApi.dll 
- remoteApiProto.m 

