% Given data
voltage = [0, 3, 6, 9, 12, 15, 18, 21];
current = [0, 0.5, 1.0, 1.48, 1.90, 2.32, 2.64, 2.98];

% Fit a second-degree polynomial to the data
coefficients_2nd_degree = polyfit(voltage, current, 2)

% Extract the coefficients for the second-degree polynomial
a2 = coefficients_2nd_degree(1);
a1 = coefficients_2nd_degree(2);
a0 = coefficients_2nd_degree(3);

% Create a range of voltage values for the best-fitting curve
voltage_range = linspace(min(voltage), max(voltage), 100);

% Calculate the corresponding current values using the second-degree polynomial
current_fit_2nd_degree = polyval(coefficients_2nd_degree, voltage_range);

% Plot the data points and the best-fitting curve
figure;
plot(voltage, current, 'o', 'MarkerSize', 8, 'LineWidth', 1.5);
hold on;
plot(voltage_range, current_fit_2nd_degree, 'r-', 'LineWidth', 2);

% Add labels and a legend
xlabel('Voltage (V)');
ylabel('Current (A)');
title('Best-Fitting Second Degree Polynomial');
legend('Actual Data', 'Best-Fitting Curve');

% Display the coefficients of the second-degree polynomial
disp(['Coefficients of the second-degree polynomial:']);
disp(['Coefficient a2: ' num2str(a2)]);
disp(['Coefficient a1: ' num2str(a1)]);
disp(['Coefficient a0: ' num2str(a0)]);

% Find the current for v = 14 V
v_target = 14;
current_at_14V = polyval(coefficients_2nd_degree, v_target);
disp(['Current at v = 14 V: ' num2str(current_at_14V)]);
