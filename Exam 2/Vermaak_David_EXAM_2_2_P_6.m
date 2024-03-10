syms x;
f(x) = 10 * exp(-x/2) * (sin(5*x))^2;

% (a) Exact integral using symbolic integration
exact_integral = int(f, 0, 10);
exact_integral = double(exact_integral);

% (b) Zero-order approximation
step = 0.01;
x_values = 0:step:10;
b_integral = sum(f(x_values)) * step;
b_integral = double(b_integral);

% (c) First-order approximation
c_integral = trapz(x_values, f(x_values));
c_integral = double(c_integral);

% Plot the exact and approximate integrals
figure;
plot(x_values, cumsum(f(x_values) * step), 'r', 'LineWidth', 2);
hold on;
plot([0, 10], [0, exact_integral], 'b--', 'LineWidth', 2);
legend('Approximate Integral', 'Exact Integral', 'Location', 'Best');
xlabel('x');
ylabel('Integral Value');
title('Exact and Approximate Integrals');

% Display the results
disp(['Exact value of the integral for 0 to 10: ', num2str(exact_integral)]);
disp(['Approximate value of the integral for 0 to 10 (Zero-order Approximation): ', num2str(b_integral)]);
disp(['Approximate value of the integral for 0 to 10 (First-order Approximation): ', num2str(c_integral)]);
