% Given data
F = [0 8.8 20.3 29.1 39.3 51.4 59.4 71.2];
x = [0 5.8 9.5 16.2 20.2 25.3 29.5 34.8];

% Q12. Find the value of coefficient 2a
coefficients_second_degree = polyfit(x, F, 2)
a2 = coefficients_second_degree(1);
disp(['Q12. Coefficient 2a: ' num2str(a2)]);

% Q13. Find the value of coefficient 1a
a1_second_degree = coefficients_second_degree(2);
disp(['Q13. Coefficient 1a: ' num2str(a1_second_degree)]);

% Q14. Find the value of coefficient 0a
a0_second_degree = coefficients_second_degree(3);
disp(['Q14. Coefficient 0a: ' num2str(a0_second_degree)]);

% Q15. Find the value of force F for x=23.5 mm
x_value = 23.5;
force_at_x = polyval(coefficients_second_degree, x_value);
disp(['Q15. Force F for x=23.5 mm: ' num2str(force_at_x)]);

% Plotting the best-fitting second degree polynomial and actual data
figure;
plot(x, F, 'o', 'DisplayName', 'Actual Data');
hold on;
fitted_curve = polyval(coefficients_second_degree, x);
plot(x, fitted_curve, '-', 'DisplayName', 'Best-Fitting Second Degree');
xlabel('Deformation (mm)');
ylabel('Force (N)');
title('Best-Fitting Second Degree Polynomial for F versus x');
legend('show');
grid on;