% Define the function
x = linspace(0, 5, 21);  % Case (a): 21 points
y = 2 * exp(-x) .* sin(3 * x.^2);

% Calculate the exact derivative
syms t;
y_exact = 2 .* exp(-t) .* sin(3 .* t.^2);
exact_derivative = diff(y_exact);
x_exact = 2.25;
% Calculate the exact derivative for x = 2.25
exact_derivative_2_25 = double(subs(exact_derivative, t, x_exact));
% Exact value of y' for x = 2.3
x_exact2 = 2.3;
% Calculate the exact derivative for x = 2.3
exact_derivative_2_3 = double(subs(exact_derivative, t, x_exact2));

% Calculate the approximate derivative
h = x(2) - x(1);
approx_derivative = diff(y) / h;


% Approximate value of y' for x = 2.25 with N = 21
index_2_25 = find(x <= x_exact, 1, 'last');
approx_derivative_2_25_21 = approx_derivative(index_2_25);


% Define the function with 501 points
x = linspace(0, 5, 501);  % Case (b): 501 points
y = 2 * exp(-x) .* sin(3 * x.^2);


% Calculate the approximate derivative
h = x(2) - x(1);
approx_derivative = diff(y) / h;


% Approximate value of y' for x = 2.3 with N = 501
index_2_3 = find(x <= x_exact2, 1, 'last');
approx_derivative_2_3_501 = approx_derivative(index_2_3);

% Display the results using disp
disp(['Exact value of y'' for x = 2.25: ', num2str(exact_derivative_2_25)]);
disp(['Approx value of y'' for x = 2.25 with N = 21: ', num2str(approx_derivative_2_25_21)]);
disp(['Exact value of y'' for x = 2.3: ', num2str(exact_derivative_2_3)]);
disp(['Approx value of y'' for x = 2.3 with N = 501: ', num2str(approx_derivative_2_3_501)]);