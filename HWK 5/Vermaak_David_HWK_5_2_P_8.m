A = logspace(log10(0.1), log10(10), 100); % Generate 100 points between 0.1 and 10

AdB = 20 * log10(A);

% Create a semi-log plot
semilogx(A, AdB, 'b', 'LineWidth', 2);
xlabel('A (Voltage Ratio)');
ylabel('AdB (Decibel Ratio)');
title('Conversion Curve: A vs AdB');
grid on;