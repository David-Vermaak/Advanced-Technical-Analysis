x = -2:0.1:2; % x values from -2 to 2 with a step of 0.1 seconds
y = x.^4;
y_inv = x.^(1/4);
figure;  % Create the plot


% Create subplots
subplot(2, 1, 1);
plot(x, y, 'b', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Original Function: y = x^4');
grid on;

subplot(2, 1, 2);
plot(x, y_inv, 'r', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Inverse Function: y = x\^(1/4)');
grid on;

% Adjust layout
sgtitle('Plots of Function and Its Inverse');