clear all
load('task_51.mat')
sim('p5p1d_sim.mdl')
figure()
hold on
plot(ship.time, ship.signals.values);
plot(model.time, model.signals.values);
title('Step response model vs ship');
ylabel('Compass measurement [deg]');
xlabel('Time [s]');
legend({'Ship','Model'},'Location','Southeast')
