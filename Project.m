% Ball and Plate Matlab Code
clear;
clc;
clf;
sim=remApi('remoteApi'); % using file (remoteApiProto.m)
    sim.simxFinish(-1); % close all opened connections
    clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);

%System properties
m = 0.0676; %mass of the ball, kilograms
R = 0.0254; %radius of the ball, meters
g = 9.81; %gravitational constant
L = 1.0; %meters
d = 0.0508; %distance from center of gear to lever arm, meters
J = 2/5*m*R^2; %inertia of a sphere

%Desired specifications
pos = 10;
Ts  = 6;

%Natural frequency and damping ratio
z = (-log(pos/100))/(sqrt(pi^2+log(pos/100)^2));
Wn = 4/(z*Ts);
            
%Transfer function of ball position and gear angle
Ball_P = 2*m*g*d*R^2/(L*(m*R^2+J)); %numerator
num = [Ball_P];
den = [1 0 0];
Kp = Wn^2/Ball_P; %Proportional gain
Kd = 2*z*Wn/Ball_P; %Derivative gain
                      
if (clientID>-1)
        disp('Connected to remote API server');
        set_param('Sysmodel','SimulationCommand','start');
        h=[0,0,0];
    %allocating joint information
    [r,h(1)]=sim.simxGetObjectHandle(clientID,'Motorx',sim.simx_opmode_blocking);
    [r,h(2)]=sim.simxGetObjectHandle(clientID,'MotorY',sim.simx_opmode_blocking);
    [r,h(3)]=sim.simxGetObjectHandle(clientID,'ball',sim.simx_opmode_blocking);
    
    while true
        [r,pball]=sim.simxGetObjectPosition(clientID,h(3),-1,sim.simx_opmode_blocking);
           xcoord=pball(1);
           ycoord=pball(2);
           
           %Coppelia to simulink
           set_param('Sysmodel/xpos','Value',num2str(xcoord));
           pause(0.005)
           set_param('Sysmodel/ypos','Value',num2str(ycoord));
           pause(0.005)
           set_param('Sysmodel','SimulationCommand','start');                      
           
           %Calculated output for desired position
           A=out.SimX.Data(:,1);
           xaxis=A(1);
           B=out.SimY.Data(:,1);
           yaxis=B(1);
           
           %Set positions
           sim.simxSetJointTargetPosition(clientID,h(1),xaxis,sim.simx_opmode_streaming);
           sim.simxSetJointTargetPosition(clientID,h(2),yaxis,sim.simx_opmode_streaming);
           
           
    end
         else
        disp('Failed connecting to remote API server');
end

sim.delete(); 
disp('Program ended');