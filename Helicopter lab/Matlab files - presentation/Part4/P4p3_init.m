%%%%%%%%PI-reg from Part 3 problem 3

A = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];
B = [0 0; 0 K1; K2 0; 0 0; 0 0];
C = [1 0 0 0 0; 0 0 1 0 0];
Q = [10 0 0 0 0; 0 1 0 0 0; 0 0 50 0 0; 0 0 0 100 0; 0 0 0 0 1];
R = [1 0; 0 1];


K = lqr(A,B,Q,R);
P = [0 10;
     5 0];

%%%%%%% A and B matrices part 4

A = [0 1 0 0 0 0; 
     0 0 0 0 0 0; 
     0 0 0 1 0 0; 
     0 0 0 0 0 0; 
     0 0 0 0 0 1;
     K3 0 0 0 0 0];
 
 B = [0 0;
     0 K1; 
     0 0; 
     K2 0; 
     0 0
     0 0];
 
%% When not observable
C = [1 0 0 0 0 0;
     0 0 1 0 0 0];
 
O = obsv(A,C);
rank(O);

%% When observable
C = [0 0 1 0 0 0;
     0 0 0 0 1 0];

O = obsv(A,C);
rank(O);

r = 15;
theta = (pi/25)*[22 23 24 -24 -23 -22];
p = r*exp(i*theta);

L = real(transpose(place(transpose(A), transpose(C), p)));
