% Define the coordinates of the points
x = [0, 6, 8]; 
y = [0, -18, 0];

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
