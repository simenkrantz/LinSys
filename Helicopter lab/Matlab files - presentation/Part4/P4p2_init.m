%%%%%%%%%%%% P-reg from Part 3 problem 2

A = [0 1 0; 0 0 0; 0 0 0];
B = [0 0; 0 K1; K2 0];
C = [1 0 0; 0 0 1];
Q = [50 0 0; 0 1 0; 0 0 2];
R = [0.1 0; 0 1];

K = lqr(A,B,Q,R);
P = inv(C*inv(B*K-A)*B);

%%%%%%%%%%% state estimation

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
 
C = [1 0 0 0 0 0; 
     0 0 1 0 0 0;
     0 0 0 0 1 0];
 
O = obsv(A,C);
rank(O);

r = 20;
theta = (pi/25)*[22 23 24 -24 -23 -22];
p = r*exp(i*theta);

L = real(transpose(place(transpose(A), transpose(C), p)));
