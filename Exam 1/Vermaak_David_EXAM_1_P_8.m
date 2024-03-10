y0 = 10;  % Initial height in m
v0 = 50;  % Initial velocity in m/s
g = 9.81;  % Gravity in m/s^2

% Time values from 0 to 10 seconds
t = 0:0.1:10;  % Time values at 0.1-second intervals

% Calculate the position as a function of time (height)
y = y0 + v0 * t - 0.5 * g * t.^2;

% Plot the curve
figure;
plot(t, y, 'b', 'LineWidth', 2);
grid on;

% Labeling and title
xlabel('Time (s)');
ylabel('Position (m)');
title('Position vs. Time');
