%% consts
K = 0.15613;
T = 72.4666;
lambda = 0.09;
Kw = 2*lambda*w0*sqrt(sigma2);

%% System without disturbances
% x = [psi r]
A = [0 1;
     0 -1/T];

B = [0; 
    K/T];

C = [1 0];

obsv(A,C)
rank(obsv(A,C))

%% System with current disturbance
% x = [psi r b]
A = [0 1 0;
     0 -1/T -K/T;
     0 0 0];
 
B = [0;
    K/T;
     0];
 
C = [1 0 0];

obsv(A,C)
rank(obsv(A,C))

%% System with wave disturbance
% x = [psi r psi_w ksi_w]
A = [0 1 0 0;
     0 -1/T 0 0;
     0 0 -2*lambda*w0 -w0^2;
     0 0 1 0];

B = [0 K/T 0 0];

C = [1 0 1 0];

obsv(A,C)
rank(obsv(A,C))

%% System with both disturbances
% x = [ksi_w psi_w psi r b]
A = [0 1 0 0 0;
     -(w0^2) -2*lambda*w0 0 0 0;
     0 0 0 1 0;
     0 0 0 -1/T -K/T;
     0 0 0 0 0];

 B = [0;
      0;
      0;
      K/T;
      0];
  
 E = [0 0;
      Kw 0;
      0 0;
      0 0;
      0 1];
  
 C = [0 1 1 0 0];
 
obsv(A,C)
rank(obsv(A,C))