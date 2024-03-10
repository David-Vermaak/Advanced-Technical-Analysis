x = -3:0.1:3; % x values from -3 to 3 with a step of 0.1
y = x.^3 + 2 * x.^2 + 2 * x + 1;
figure;  % Create the plot
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Function: y = x^3 +2x^2 +2x +1');
grid on; % Add grid