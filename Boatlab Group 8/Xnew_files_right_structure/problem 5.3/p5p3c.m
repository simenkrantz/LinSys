clear all
load('task_53.mat')
sim('p5p3c_sim.mdl')

plot(ship.time, ship.signals.values);
hold on
plot(rudder_angle.time, rudder_angle.signals.values,'r');
plot(ship.time,30*ones(size(ship.time)),'black--')

title('Compass course and rudder input with current')
legend({'Compass course', 'Rudder input', ...
    'Reference compass course'}, 'Location','Southeast');
ylabel('Angle [deg]');
xlabel('Time [s]');