% used the same m file as problem 2
syms x;
y = 1.2*x^2 -3.4*x + 5.1;

% Integrate the function
indefinite_integral = int(y, x);

% Prompt the user for limits
lower_limit = input('Enter the lower limit of integration: ');
upper_limit = input('Enter the upper limit of integration: ');

% Integrate with limits
definite_integral = int(y, x, lower_limit, upper_limit);

% Convert to a numeric value
definite_integral = double(definite_integral);

% Display the result
disp(['The indefinite integral, Y is: ' char(indefinite_integral) ' +C']);
disp(['The definite integral of Y from ' num2str(lower_limit) ' to ' num2str(upper_limit) ' is: ' num2str(definite_integral)]);
