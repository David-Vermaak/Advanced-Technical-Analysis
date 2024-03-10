% Define the function
syms x;
y = (2 * cos(3 * x))/ x;

% Differentiate the function
dy_dx = diff(y);

% Prompt the user for x
x_value = input('Enter a value x to evaluate the derivative at: ');
derivative_at_x = subs(dy_dx, x, x_value);

% Convert to a numeric value
derivative_at_x = double(derivative_at_x);

% Display the derivative and its value at x
disp(['The derivative dy/dx is: ' char(dy_dx)]);
disp(['The value of the derivative at x = ' num2str(x_value) ' is: ' num2str(derivative_at_x)]);


%_________________________________________________________________________________________________



% Calculate the exact derivative
syms x;
y = (2 * cos(3 * x))/ x;

% Differentiate the function
dy_dx = diff(y);

% Prompt the user for x
x_value = input('Enter a value x to evaluate the derivative at: ');
% Calculate the exact derivative
derivative_at_x = subs(dy_dx, x, x_value);

% Convert to a numeric value
derivative_at_x = double(derivative_at_x);

% Display the exact derivative
disp(['The value of the exact derivative at x = ' num2str(x_value) ' is: ' num2str(derivative_at_x)]);

