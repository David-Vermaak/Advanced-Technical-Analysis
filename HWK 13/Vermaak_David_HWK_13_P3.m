% Define the function
f = @(x) exp(-x.^2 / 2);

% Generate x values with a step size of 0.1 from -3 to 3
x = -3:0.1:3;

% Generate y values for the actual points
y_actual = f(x);

% (a) Fit a 2nd degree polynomial
p2 = polyfit(x, y_actual, 2)
y_fit_2 = polyval(p2, x);

% (b) Fit a 4th degree polynomial
p4 = polyfit(x, y_actual, 4)
y_fit_4 = polyval(p4, x);

% (c) Fit a 6th degree polynomial
p6 = polyfit(x, y_actual, 6)
y_fit_6 = polyval(p6, x);

% Plot the results
figure;

subplot(3,1,1);
plot(x, y_actual, 'o', x, y_fit_2);
title('2nd Degree Polynomial Fit');
legend('Actual Points', '2nd Degree Fit');

subplot(3,1,2);
plot(x, y_actual, 'o', x, y_fit_4);
title('4th Degree Polynomial Fit');
legend('Actual Points', '4th Degree Fit');

subplot(3,1,3);
plot(x, y_actual, 'o', x, y_fit_6);
title('6th Degree Polynomial Fit');
legend('Actual Points', '6th Degree Fit');
