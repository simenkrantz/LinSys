psi_r = 30;
K = 0.15613;
T = 72.4666;
K_pd = 0.836;
T_d = T;
T_f = 8.39;

H_pd = tf(K_pd*[T_d 1],[T_f 1]);
H_ship = tf([K],[T 1 0]);

H_0 = H_pd*H_ship;

[mag,phase,wout] = bode(H_0);

plot(ship.time, ship.signals.values);
hold on
plot(rudder_angle.time, rudder_angle.signals.values,'r');
plot(ship.time,30*ones(size(ship.time)),'black--')

title('Compass course and rudder input with waves')
legend('Location','Southeast','Compass course', 'Rudder input', 'Reference compass course');
ylabel('Angle [deg]');
xlabel('Time [s]');