syms x;
y = 3*x^5 * (sin(5*x))^2 + 100*exp(-4*x) * cos(3*x);

% Calculate the definite integral over the interval -1 to 3
integral_value = int(y, x, -1, 3);
integral_value = double(integral_value);

% Display the result
disp(['The value of the integral over the interval -1 to 3 is: ' num2str(integral_value)]);