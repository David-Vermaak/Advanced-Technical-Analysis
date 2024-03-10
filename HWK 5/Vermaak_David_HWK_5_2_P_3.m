x = -3:0.1:3; % x values from -3 to 3 with a step of 0.1
y = -x -1;
figure;  % Create the plot
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Function: y = -x - 1');
grid on; % Add grid