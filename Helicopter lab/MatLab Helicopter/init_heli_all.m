%% initial consts
% FOR HELICOPTER NR 3-10
% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert høsten 2006 av Jostein Bakkeheim
% Oppdatert høsten 2008 av Arnfinn Aas Eielsen
% Oppdatert høsten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring


%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 1;
Joystick_gain_y = -1;


%%%%%%%%%%% Physical constants
g = 9.81; % gravitational constant [m/s^2]
l_c = 0.46; % distance elevation axis to counterweight [m]
l_h = 0.66; % distance elevation axis to helicopter head [m]
l_p = 0.175; % distance pitch axis to motor [m]
m_c = 1.92; % Counterweight mass [kg]
m_p = 0.72; % Motor mass [kg]

K_f = 0.143;
J_p = 2*m_p*l_p^2;
J_e = m_c*l_c^2 + 2*m_p*l_h^2;
J_lam = m_c*l_c^2 + 2*m_p*(l_h^2+l_p^2);

K1 = (l_p*K_f)/J_p;
K2 = (l_h*K_f)/J_e;
K3 = -((((l_c*m_c-2*l_h*m_p*g)/J_e)*((-l_h*K_f)/J_lam)))/((l_h*K_f)/(J_e));

%%%%%%%%%%%% Own constants
e_star = 0;
e_dot_star = 0;

p_star = 0;
p_dot_star = 0;

%%%%%%%%%%%% Regulator values
rho = 2;

K_pp = 15.89;
K_pd = 14.08;
K_rp = (1/-0.6117)*rho;

%% multivariable control

A = [0 1 0; 0 0 0; 0 0 0];
B = [0 0; 0 K1; K2 0];
C = [1 0 0; 0 0 1];
Q = [50 0 0; 0 1 0; 0 0 2];
R = [0.1 0; 0 1];

K = lqr(A,B,Q,R);
P = inv(C*inv(B*K-A)*B);

p = real(eig(A-B*K)) %FRA STATE ESTIMATION OPPG

%% multivariable control PI-reg
A = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];
B = [0 0; 0 K1; K2 0; 0 0; 0 0];
C = [1 0 0 0 0; 0 0 1 0 0];
Q = [10 0 0 0 0;0 1 0 0 0; 0 0 50 0 0; 0 0 0 1 0; 0 0 0 0 1];
R = [1 0; 0 1];


K = lqr(A,B,Q,R)
P = [0 10; 10 0];

%% state estimation



%estimation
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

%p = [-1.4446; -1.4446; -0.4084]

w =[p(1);p(2)*1.1;p(3);p(1);p(2)*1.1;p(3)];

L = transpose(place(transpose(A), transpose(C), w*10));

%%
C =[ 0 0 1 0 0 0;
     0 0 0 0 1 0];
L = transpose(place(transpose(A), transpose(C), w*10))

