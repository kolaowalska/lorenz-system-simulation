clear; clc; close all;

sigma = 10;
r = 28;
b = 8/3;
params = [sigma, r, b];

x0 = 1;
y0 = 1;
z0 = 1;
initialConditions = [x0, y0, z0];

timeSpan = [0, 50];

[tSol, xSol] = ode45(@(t, X) lorenzSystem(t, X, params), timeSpan, initialConditions);

x = xSol(:, 1);
y = xSol(:, 2);
z = xSol(:, 3);

figure;
set(gcf, 'Color', 'k');
hold on;
grid on;
xlabel('x', 'Color', 'w');
ylabel('y', 'Color', 'w');
zlabel('z', 'Color', 'w');
title('Lorenz attractor in 3D phase space', 'Color', 'w');
set(gca, 'Color', 'k', 'XColor', 'w', 'YColor', 'w', 'ZColor', 'w');
view(3);

numPoints = length(tSol);
linePlot = plot3(NaN, NaN, NaN, 'w', 'LineWidth', 1.2);

for i = 1:numPoints
    set(linePlot, 'XData', x(1:i), 'YData', y(1:i), 'ZData', z(1:i));
    drawnow;
end
