clear all
load('task_51.mat')
psi_r = 30;
K_pd = 0.836;
T_d = T;
T_f = 8.39;

H_pd = tf(K_pd*[T_d 1],[T_f 1]);
H_ship = tf([K],[T 1 0]);
H_0 = H_pd*H_ship;

sim('p5p3b_sim.mdl')

plot(ship.time, ship.signals.values);
hold on
plot(rudder_angle.time, rudder_angle.signals.values,'r');
plot(ship.time,30*ones(size(ship.time)),'black--')

title('Compass course and rudder input without disturbances')
legend({'Compass course', 'Rudder input', ...
    'Reference compass course'}, 'Location','Southeast');
ylabel('Angle [deg]');
xlabel('Time [s]');

save('common files\task_53', 'psi_r', 'H_0', 'H_pd', ...
    'H_ship', 'K_pd', 'T_d', 'T_f')