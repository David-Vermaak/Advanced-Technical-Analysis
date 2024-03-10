% Define the range of x values
x = logspace(log10(0.001), log10(1000), 1000); % Generate 1000 logarithmically spaced values between 0.001 and 1000

% Formula
y = x.^(1/6);

% Graph log-log plot
figure;
loglog(x, y, 'b');
xlabel('x (log scale)');
ylabel('y (log scale)');
title('Log-Log Plot of y = x^{1/6}');

% Given
x1 = 0.05;
x2 = 500;

% Calculate y for the x values
y1 = x1^(1/6);
y2 = x2^(1/6);

% Calculate the Ln values
log_y1 = log(y1);
log_y2 = log(y2);

% Display
fprintf('For x = 0.05, log(y) = %.4f\n', log_y1);
fprintf('For x = 500, log(y) = %.4f\n', log_y2);
