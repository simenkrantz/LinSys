clear all
load('task_53.mat')
load('task_54.mat')
f_s = 10;       %Sample frequency [Hz]
T_s = 1/f_s;    %Sample time

sys = ss(A,B,C,0);              %system
sys_disturb = ss(A,E,C,0);      %system w/disturbance as control input

sys_disc = c2d(sys,T_s, 'zoh'); %discrete system

%discrete distubance system
sys_disturb_disc = c2d(sys_disturb,T_s, 'zoh');

A_d = sys_disc.A;
B_d = sys_disc.B;
C_d = C;
E_d = sys_disturb_disc.B;

%% task 5.5 b)
sim('p5p5b_sim.mdl')

R = var(ship.signals.values)*(pi/180)^2; %unit: [rad^2]
R_v = R/T_s;

%% task 5.5 c)

Q = [30 0;
     0 10^-6];

P_ = [1 0 0 0 0;
      0 0.013 0 0 0;
      0 0 pi^2 0 0;
      0 0 0 1 0;
      0 0 0 0 0.0025];

x_ = [0; 0; 0; 0; 0];

I = eye(5);

save('common files\task_55','A_d','B_d','C_d','E_d', ...
    'Q','R_v','P_','x_','I', 'T_s')