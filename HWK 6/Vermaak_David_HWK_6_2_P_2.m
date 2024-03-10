% Define the coordinates of the points
x = [0, 4, 8, 10, 12, 14, 18, 22];
y = [0, 20, 20, 0, 0, -20, -20, 0];

% Calculate the differences between adjacent points
dx = diff(x);
dy = diff(y);

% Calculate the derivative using finite differences
derivative = dy ./ dx;

% Create a line plot for the original line
figure;
plot(x, y, 'b', 'LineWidth', 2);  % Original line
hold on;

% Create a line plot for the derivative
plot(x(1:end-1), derivative, 'r', 'LineWidth', 2);  % Derivative line
grid on;
xlabel('X');
ylabel('Derivative');
title('Graph of the Derivative');
legend('Original Line', 'Derivative', 'Location', 'southwest');

% Set x-axis and y-axis limits
xlim([0, 25]);
ylim([-30, 30]);