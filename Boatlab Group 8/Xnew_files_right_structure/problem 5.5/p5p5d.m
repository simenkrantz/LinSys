clear all
load('task_52.mat')
load('task_53.mat')
load('task_55.mat')
sim('p5p5d_sim.mdl')

figure()
hold on
plot(ship.time,30*ones(size(ship.time)),'black--')
plot(ship.time, ship.signals.values);
plot(rudder_angle.time, rudder_angle.signals.values,'r');
plot(est_bias.time, est_bias.signals.values, 'black');

title('With current and bias feed-forward')
legend('Reference compass course','Compass course', ...
    'Rudder input', 'Estimated bias', 'Location', 'Southeast');
ylabel('Angle [deg]');
xlabel('Time [s]');