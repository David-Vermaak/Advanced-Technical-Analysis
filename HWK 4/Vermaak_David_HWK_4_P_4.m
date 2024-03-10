x = logspace(log10(0.01), log10(100), 100); % Logarithmically spaced values from 0.01 to 100

% Calculate the corresponding y values
y = sqrt(x);

% Create the log-log plot
figure;
loglog(x, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y = \surd x');
title('Log-Log Plot of y = \surd x');
grid on;