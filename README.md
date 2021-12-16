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
Initialize simulink, set up handles, gather coppelia dta, update simulink value(s), run simulink, output data from simulink, send output data to coppelia to change motor angle, repeat (until coppelia is not running).

## 4. Simulink

## 5. Coppelia

## 6. Conclusion

## 7. References
