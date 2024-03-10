% Define the function
f = @(x) sqrt(x);

% Define the derivative function
df = @(x) 0.5 * x.^(-0.5); % Derivative of sqrt(x) is 0.5 * x^(-0.5)

% Define the range of x values
x_values = -5:0.01:5;

y_values = f(x_values);

derivative_values = df(x_values);

% Plot the original function and its derivative using fplot
figure;
fplot(f, [min(x_values), max(x_values)], 'b', 'LineWidth', 2);
hold on;
fplot(df, [min(x_values), max(x_values)], 'r', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Function and its Derivative');
legend('y = sqrt(x)', 'Derivative', 'Location', 'northwest');
grid on;
hold off;