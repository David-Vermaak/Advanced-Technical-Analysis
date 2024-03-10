x = -3:0.1:2; % x values from -3 to 2 with a step of 0.1
y = 2 * x.^5 + 6.4721 * x.^4 + 10.4721 * x.^3 + 10.4721 * x.^2 + 6.4721 * x + 2;
figure;  % Create the plot
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Function: y = 2x^5 + 6.4721x^4 + 10.4721x^3 + 10.4721x^2 + 6.4721x +2');
grid on; % Add grid