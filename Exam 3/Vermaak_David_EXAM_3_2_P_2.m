% Given data
F = [0 8.8 20.3 29.1 39.3 51.4 59.4 71.2];
x = [0 5.8 9.5 16.2 20.2 25.3 29.5 34.8];

% Q9. Find the value of coefficient 1a
coefficients = polyfit(x, F, 1);
a1 = coefficients(1);
disp(['Q9. Coefficient 1a: ' num2str(a1)]);

% Q10. Find the value of coefficient 0a
a0 = coefficients(2);
disp(['Q10. Coefficient 0a: ' num2str(a0)]);

% Q11. Find the value of deformation (mm) for F=65 N
F_value = 65;
deformation = polyval(coefficients, F_value);
disp(['Q11. Deformation for F=65 N: ' num2str(deformation)]);

% Plotting the best-fitting straight line and actual data
figure;
plot(x, F, 'o', 'DisplayName', 'Actual Data');
hold on;
fitted_line = polyval(coefficients, x);
plot(x, fitted_line, '-', 'DisplayName', 'Best-Fitting Line');
xlabel('Deformation (mm)');
ylabel('Force (N)');
title('Best-Fitting Straight Line for F versus x');
legend('show');
grid on;
