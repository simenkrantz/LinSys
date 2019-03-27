%%%%%%%%% multivariable control P-reg

A = [0 1 0; 0 0 0; 0 0 0];
B = [0 0; 0 K1; K2 0];
C = [1 0 0; 0 0 1];
Q = [50 0 0; 0 1 0; 0 0 2];
R = [0.1 0; 0 1];

K = lqr(A,B,Q,R)
P = inv(C*inv(B*K-A)*B);