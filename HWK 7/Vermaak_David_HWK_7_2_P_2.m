% Define the coordinates of the points
x = [0, 4, 8, 12];
y = [5, -5, 5, -5];

% Calculate the integral using trapezoidal rule
integral_value = trapz(x, y);

% Display the integral value
disp(['Integral Value: ', num2str(integral_value)]);

% Calculate the cumulative integral values
cumulative_integral = cumtrapz(x, y);

% Plot the original function
figure;
subplot(2,1,1);
plot(x, y, 'bo-',  'LineWidth', 2);
title('Original Function');
xlabel('x');
ylabel('y');

% Set x-axis and y-axis limits
xlim([0, 12]);
ylim([-8, 8]);

% Plot the integral
subplot(2,1,2);
plot(x, cumulative_integral, 'ro-',  'LineWidth', 2);
title('Integral of the Function');
xlabel('x');
ylabel('Integral Value');
sgtitle('Function and its Integral');