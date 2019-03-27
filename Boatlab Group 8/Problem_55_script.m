f_s = 10; %Sample frequency [Hz]
T_s = 1/f_s; %Sample time

sys = ss(A,B,C,0); %system
sys_dist = ss(A,E,C,0); %system disturbance

sys_disc = c2d(sys,T_s, 'zoh');
sys_dist_disc = c2d(sys_dist,T_s, 'zoh');

A_d = sys_disc.A;
B_d = sys_disc.B;
C_d = C;
E_d = sys_dist_disc.B

R = var(ship.signals.values)*(pi/180)^2; %unit: [rad^2], 6.132*10^-7

figure()
plot(ship.time, ship.signals.values);
hold on
plot(rudder_angle.time, rudder_angle.signals.values,'r');
plot(ship.time,30*ones(size(ship.time)),'black--')
plot(est_bias.time, est_bias.signals.values, 'black');

legend( 'Compass course', 'Rudder input', 'Reference compass course', 'Estimated bias');
ylabel('Angle [deg]');
xlabel('Time [s]');

%% Oppg 55 e)

figure()
plot(ship.time, ship.signals.values);
hold on
plot(est_psi.time, est_psi.signals.values);
plot(ship.time,30*ones(size(ship.time)),'black--')

legend('Location','East','Measured compass course', 'Filtered compass course', 'Compass course reference');

figure()
plot(est_bias.time, est_bias.signals.values, 'black');
hold on
plot(rudder_angle.time, rudder_angle.signals.values,'r');

legend('Estimated bias', 'Rudder input');

figure()
plot(psi_w(1,1:4000),psi_w(2,1:4000));
hold on
plot(est_psi_w.time, est_psi_w.signals.values);

legend('Actual wave influence','Estimated wave influence');
