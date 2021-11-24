clear all
close all
m = 4;% mass of quadcopter
Ixx =  155237782e-9 ;
Iyy =  183039510e-9 ;
Izz =  66119823e-9 ;
I = [Ixx 0 0;0 Iyy 0;0 0 Izz];
Jr = 824e-6;% propeller rotational moment 
              % of inertia

b = 6.66e-5;% Thrust coefficient
l = 0.34; % radius of quadrotor
g = 9.81; % gravity
d = 1.642e-4; % drag coefficient

