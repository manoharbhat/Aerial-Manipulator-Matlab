b=6.66e-5;%thrust coefficient
k=1.642e-4;%drag coefficient 
m = 4;% mass of quadcopter
Ixx =  155237782e-9 ;
Iyy =  183039510e-9 ;
Izz =  66119823e-9 ;
A = [ 0 0 0 1 0 0 0 0 0 0 0 0;
      0 0 0 0 1 0 0 0 0 0 0 0; 
      0 0 0 0 0 1 0 0 0 0 0 0; 
      0 0 0 0 0 0 0 2 0 0 0 0; 
      0 0 0 0 0 0 -2 0 0 0 0 0;
      0 0 0 0 0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0 0 1 0 0;
      0 0 0 0 0 0 0 0 0 0 1 0;
      0 0 0 0 0 0 0 0 0 0 0 1;
      0 0 0 0 0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0 0 0 0 0];
B = [ 0 0 0 0;
      0 0 0 0;
      0 0 0 0;
      0 0 0 0;
      0 0 0 0;
      1/4 0 0 0;
      0 0 0 0;
      0 0 0 0;
      0 0 0 0;
      0 1/Ixx 0 0;
      0 0 1/Iyy 0;
      0 0 0 1/Izz];
C =  [1 0 0 0 0 0 0 0 0 0 0 0;
      0 1 0 0 0 0 0 0 0 0 0 0; 
      0 0 1 0 0 0 0 0 0 0 0 0; 
      0 0 0 1 0 0 0 0 0 0 0 0];
D =  [0 0 0 0;
      0 0 0 0;
      0 0 0 0;
      0 0 0 0];
%X_dot = A*X +B*u;
Q = diag([500000 500000 5000 500000 1 1 1 1 1 1 1 1]);
R = diag([0.01 0.01 0.01 0.01]);
sys = ss(A,B,C,D);
control=ctrb(sys);
check = rank(control);
K = lqr(A,B,Q,R);
eig(A-B*K)

