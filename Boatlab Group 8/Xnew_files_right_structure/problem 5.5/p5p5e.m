clear all
load('task_52.mat')
load('task_53.mat')
load('task_55.mat')
sim('p5p5e_sim.mdl')

figure()
hold on
plot(ship.time, ship.signals.values);
plot(est_psi.time, est_psi.signals.values);
plot(ship.time,30*ones(size(ship.time)),'black--')

title({'Compass course with waves and current.' ...
    'Bias feed-forward and filtered \psi'})
legend({'Measured compass course', 'Filtered compass course', ...
    'Compass course reference'}, 'Location','East');
ylabel('Angle [deg]');
xlabel('Time [s]');

figure()
hold on
plot(est_bias.time, est_bias.signals.values, 'black');
plot(rudder_angle.time, rudder_angle.signals.values,'r');

title('Rudder input and estimated bias, with waves and current')
legend('Estimated bias', 'Rudder input');
ylabel('Angle [deg]');
xlabel('Time [s]');

figure()
hold on
plot(psi_w(1,1:4000),psi_w(2,1:4000));
plot(est_psi_w.time, est_psi_w.signals.values);

title('Estimated vs actual wave influence')
legend('Actual wave influence','Estimated wave influence');
ylabel('Angle [deg]');
xlabel('Time [s]');