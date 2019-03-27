clear all
sine_freq = 0.05; %set frequency of sine input
sim('p5p1b_sim.mdl')
figure()
plot(ship.time, ship.signals.values);
title(['Frequency = ', num2str(sine_freq) , ...
    ' [rad/s] without distubances']);
ylabel('Compass measurement [deg]');
xlabel('Time [s]');

sine_freq = 0.005; %set frequency of sine input
sim('p5p1b_sim.mdl')
figure()
plot(ship.time, ship.signals.values);
title(['Frequency = ', num2str(sine_freq) , ...
    ' [rad/s] without distubances']);
ylabel('Compass measurement [deg]');
xlabel('Time [s]');

K = 0.15613;
T = 72.4666;

save('common files\task_51', 'K', 'T')