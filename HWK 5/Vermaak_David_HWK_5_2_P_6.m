t = 0:0.01:(5 * 0.2); % time values from 0 to 1 seconds with a step of 0.01
a = 0.04 * exp(-t/0.2);
figure;  % Create the plot
plot(t, a, 'b-', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Current (a)');
title('Function: i(t) = 0.04e^(-t/0.2)');
grid on; % Add grid