x = -3:0.1:3; % x values from -3 to 3 with a step of 0.1
y = 5 * x + 2;
figure;  % Create the plot
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Function: y = 5x + 2');
grid on; % Add grid