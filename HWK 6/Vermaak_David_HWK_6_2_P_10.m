% Define the time range
t = 0:0.1:10;

% Calculate displacement y
y = -10*t + 100*(1 - exp(-2*t));

% Calculate velocity dy/dt
velocity = -10 + 200*exp(-2*t);

% Calculate acceleration d^2y/dt^2
acceleration = -400*exp(-2*t);

% Create a figure
figure;
sgtitle('Displacement, Velocity, and Acceleration');

% Plot displacement
subplot(3,1,1);
plot(t, y, 'b', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Displacement (y)');
title('Displacement vs. Time');

% Plot velocity
subplot(3,1,2);
plot(t, velocity, 'r', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Velocity');
title('Velocity vs. Time');

% Plot acceleration
subplot(3,1,3);
plot(t, acceleration, 'g', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Acceleration');
title('Acceleration vs. Time');



% Create a figure
figure;
% Plot displacement, velocity, and acceleration on a single graph
subplot(1,1,1);
plot(t, y, 'b', t, velocity, 'r', t, acceleration, 'g', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Value');
title('Displacement, Velocity, and Acceleration vs. Time');
legend('Displacement', 'Velocity', 'Acceleration');
grid on;
