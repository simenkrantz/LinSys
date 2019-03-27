f_s = 10; %Sample frequency [Hz]
T_s = 1/f_s; %Sample time

sys = ss(A,B,C,0); %system
sys_dist = ss(A,E,C,0); %system disturbance

sys_disc = c2d(sys,T_s, 'zoh');
sys_dist_disc = c2d(sys_dist,T_s, 'zoh');

A_d = sys_disc.A;
B_d = sys_disc.B;
C_d = C;
E_d = sys_dist_disc.B;