% Given data
voltage = [0, 3, 6, 9, 12, 15, 18, 21];
current = [0, 0.5, 1.0, 1.48, 1.90, 2.32, 2.64, 2.98];

% Fit a straight line (1st degree polynomial) to the data
coefficients = polyfit(voltage, current, 1)

% Extract the slope and intercept from the coefficients
slope = coefficients(1);
intercept = coefficients(2);

% Create a range of voltage values for the best-fitting line
voltage_range = linspace(min(voltage), max(voltage), 100);

% Calculate the corresponding current values using the line equation
current_fit = polyval(coefficients, voltage_range);

% Plot the data points and the best-fitting line
figure;
plot(voltage, current, 'o', 'MarkerSize', 8, 'LineWidth', 1.5);
hold on;
plot(voltage_range, current_fit, 'r-', 'LineWidth', 2);

% Add labels and a legend
xlabel('Voltage (V)');
ylabel('Current (A)');
title('Best-Fitting Straight Line');
legend('Actual Data', 'Best-Fitting Line');

% Display the slope and intercept
disp(['Best-fitting line equation: i = ' num2str(slope) ' * v + ' num2str(intercept)]);

a = coefficients(1);
disp(['Value of coefficient a: ' num2str(a)]);

b = coefficients(2);
disp(['Value of coefficient b: ' num2str(b)]);

v_target = 10.5;
current_at_10_5V = polyval(coefficients, v_target);
disp(['Current at v = 10.5 V: ' num2str(current_at_10_5V)]);

