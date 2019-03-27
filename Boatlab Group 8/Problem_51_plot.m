%% task 5.1 b) and c)
plot(compass.time, compass.signals.values);
title('Frequency = 0.05 [rad/s] with waves and measurement noise');
ylabel('Compass measurement [deg]');
xlabel('Time [s]');

%% task 5.1 d)
plot(ship.time, ship.signals.values);
hold on
plot(model.time, model.signals.values);
title('Step response model vs ship');
ylabel('Compass measurement [deg]');
xlabel('Time [s]');
legend('Location','Southeast','Ship','Model')

