# Aerial-Manipulator-Matlab
An Aerial Manipulator consisting of a PID controlled quadcopter( Tarot 750 ) and a 2dof robotic arm. The objective is to go to the selected tree, perch on to the tree branch and cut it using the robotic arm. A detailed analysis of the Quadcopter was done. 

Matlab Simulink was used to execute the PID controlled aerial manipulator and SimMechanics was used to visualise the implementation.

Simulink Blocks
![](https://github.com/manoharbhat/Aerial-Manipulator-Matlab/blob/main/simscape.jpg)


Controller Block 
Inputs -  Reference speed and errors in Altitude, roll, pitch, and yaw

![](https://github.com/manoharbhat/Aerial-Manipulator-Matlab/blob/main/controller%20block.jpg)

The Quadrotor 3D model - Base and Sensor senses and gives the current roll, pitch, yaw, altitude and position. 
![](https://github.com/manoharbhat/Aerial-Manipulator-Matlab/blob/main/Quadcopter%20block.jpg))

The speed of motors are sent to the PID controller block and each controlled speed is given
![](https://github.com/manoharbhat/Aerial-Manipulator-Matlab/blob/main/PID%20block.jpg)



The Quadcopter CAD model using Solidworks

![](https://github.com/manoharbhat/Aerial-Manipulator-Matlab/blob/main/Front%20view.jpg)


![](https://github.com/manoharbhat/Aerial-Manipulator-Matlab/blob/main/side%20view.jpg)


![](https://github.com/manoharbhat/Aerial-Manipulator-Matlab/blob/main/top%20view.jpg)

Details available in report
