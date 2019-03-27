clear all
sine_freq = 0.05; %set frequency of sine input
sim('p5p1c_sim.mdl')
figure()
plot(ship.time, ship.signals.values);
title(['Frequency = ', num2str(sine_freq) , ...
    ' [rad/s] with waves and measurement noise']);
ylabel('Compass measurement [deg]');
xlabel('Time [s]');

sine_freq = 0.005; %set frequency of sine input
sim('p5p1c_sim.mdl')
figure()
plot(ship.time, ship.signals.values);
title(['Frequency = ', num2str(sine_freq) , ...
    ' [rad/s] with waves and measurement noise']);
ylabel('Compass measurement [deg]');
xlabel('Time [s]');