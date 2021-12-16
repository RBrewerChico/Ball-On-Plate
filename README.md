# Ball-On-Plate
## MECA 482 - Control Systems Design Project

<p align="center"><b>Project Members: 
  </p>
<p align="center"></b> Ryan Brewer, Andrew Renteria, Alex Robie, Alex Roth, Josh Verdon
</p>
<p align="center"><b>California State University, Chico
  </p>
<p align="center"><b>College of Mechanical and Mechatronic Engineering and Advance Manufacturing
   </p>
<p align="center"><b>Ball On Plate Design Project
  </p>
<p align="center"><b> Fall 2021
   </p>
 <p align="left"><b>Table of Contents
    </p>
<p align="left">1. [Introduction]
   </p>
<p align="left">2. [Mathamatical Models & System Requirements]
   </p>
<p align="left">3. [MATLAB Code and Testing]
   </p>
<p align="left">4. [Simulink]
   </p>
<p align="left">5. [Coppelia]
   </p>
<p align="left">6. [Conclusion]
   </p>
<p align="left">7. [References]
   </p>
  
## 1. Introduction
The purpose of this system is to balance a ball on a plate using two stepper motors attached in line to the bottom side of the plate. The ball would be placed on the plate, the plate would move in the desired axis to center the ball on the plate. The biggest challenge for this project is the plate positioning as well as the ball balance math. These have to work in kind to produce a position on the plate. The plate is linked via X and Y axis that are shown in the picture below.

## 2. Mathamatical Models & System Requirements
The modeling used for our X-axis was replicated as well for the Y-axis. The model given by...(finish)

## 3. MATLAB Code and Testing
The following figure contains the Matlab code used. 
The interpretation of the code is as follows:
Clear all possible variables, create a link to coppelia, create/ set up physical parameters, run code (if connected to coppelia), display fail connection error (if not connected to coppelia);
Once connected to coppelia code continues to run in the following order:
Initialize simulink, set up handles, gather coppelia data, update simulink value(s), run simulink, output data from simulink, send output data to coppelia to change motor angle, repeat (until coppelia is not running).

The mathematical model was tested using the following Matlab code and simulink:
<p align="center">
  <img src="Images/Simulink Testing Code(1).png">
<p align="center">
  <img src="Images/Simulink Testing Code(2).png">

           
The below image is a graph depicitng output data from Matlab of position vs. time of the ball of the system. Note that the x- and y- positions of the ball are listed independently on the graph and the y- position rapidly increases in relation to the x- position.          
<p align="center">
  <img src="Images/Simulink Testing Graph.png">


  
## 4. Simulink
The figure below displays the final Simulink result file used for this project. Walking through the image, the first step is to enter a desired position for the ball. From here, the balls position is obtained and inputed into the left side of the Simulink image. The obtained data is from the coppelia and Matlab codes explained in the previous sections. The next step is calculating the motor angle, which is a direct result of the Simulink simulation. The final step for Simulink is a reverse of an earlier step; the calculated motor angle value is transferred back into the Coppelia and Matlab code, thus alerting the motor of the required motor angle.
  
<p align="center">
  <img src="Images/Simulink Testing Diagram.png">
  
  
## 5. Coppelia

## 6. Conclusion

## 7. References
