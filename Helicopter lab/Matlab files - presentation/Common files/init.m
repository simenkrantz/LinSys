%%%%% initial consts

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
K3 = -((-l_h*K_f)*(m_c*l_c*g-2*l_h*m_p*g))/((J_lam)*(l_h*K_f));
%FEIL K3:  K3 = -((((l_c*m_c-2*l_h*m_p*g)/J_e)*((-l_h*K_f)/J_lam)))/((l_h*K_f)/(J_e));

%%%%%%%%%%%% Own constants
e_star = 0;
e_dot_star = 0;

p_star = 0;
p_dot_star = 0;
