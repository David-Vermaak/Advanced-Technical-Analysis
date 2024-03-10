x = logspace(log10(0.1), log10(10), 100); % Logarithmically spaced values from 0.1 to 10

% Calculate the corresponding y values
y = 2 * x.^3;

% Create the log-log plot
figure;
loglog(x, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y = 2x^3');
title('Log-Log Plot of y = 2x^3');
grid on;