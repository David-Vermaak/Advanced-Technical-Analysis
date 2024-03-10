% Define the range of x values
x = linspace(-3, 3, 200);

% Convert the angle from degrees to radians
a_deg = 40;
a_rad = deg2rad(a_deg);

% Calculate y values using the equation
y = 24 * sin(3.5 * x + a_rad);

% Find the value of y for x = 1
x_1 = 1;
y_1 = 24 * sin(3.5 * x_1 + a_rad);

% Find the value of y for x = 2
x_2 = 2;
y_2 = 24 * sin(3.5 * x_2 + a_rad);

% Plot the curve
figure;
plot(x, y)
title('Plot of y = 24*sin(3.5x + 40^\circ)')
xlabel('x')
ylabel('y')

% Display the values
fprintf('Value of y for x = 2: %.2f\n', y_2);
fprintf('Value of y for x = 1: %.2f\n', y_1);
