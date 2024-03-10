t = 0:0.1:8; % Time values from 0 to 8 seconds with a step of 0.1 seconds
v = -9.8 * t + 50;   % Calculate the velocity using the given equation
figure;  % Create the plot
plot(t, v, 'b-', 'LineWidth', 2); % Plot the velocity as a function of time
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('Velocity vs. Time');
grid on; % Add grid
