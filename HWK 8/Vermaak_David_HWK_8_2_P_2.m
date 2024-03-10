% Define the integration limits
a = 0;
b = 5;

% Define the number of points for approximation
num_points = 21;

% Calculate the exact value of the integral
exact_value = integral(@(x) x .* exp(-x.^2), a, b);

% Calculate the zero-order approximation with 100 points
x_points = linspace(a, b, num_points);
zero_order_approximation = (b - a) * mean(x_points .* sin(x_points));

% Calculate the first-order approximation with 100 points
delta_x = (b - a) / num_points;
first_order_approximation = delta_x * sum(x_points .* sin(x_points));


% Define the function
syms x;
y = x * exp(-x^2);

% Calculate the indefinite integral
indefinite_integral = int(y, x);

% Evaluate the indefinite integral at the x values
y_values = subs(indefinite_integral, x, x_points);


% Plot
figure;
plot(x_points, x_points .* sin(x_points), 'b-', 'LineWidth', 2);
hold on;
plot(x_points, y_values, 'ro');
xlabel('x');
ylabel('f(x)');
title('First-Order Approximation vs. Exact Value');
legend('First-Order Approximation', 'Exact Value', 'Location', 'NorthEast');
grid on;
hold off;

% Display the results
fprintf('Exact value of the integral: %.4f\n', exact_value);
fprintf('Zero-order approximation with %d points: %.4f\n', num_points, zero_order_approximation);
fprintf('First-order approximation with %d points: %.4f\n', num_points, first_order_approximation);
