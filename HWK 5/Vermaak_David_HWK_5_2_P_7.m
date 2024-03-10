t = 0:1:(5 * 20); % time values from 0 to 100 seconds with a step of 1
T = -10 + 80 * exp(-t / 20);
figure;  % Create the plot
plot(t, T, 'b-', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Temperature (F)');
title('Function: T(t) = -10 + 80*e\^(-t/20)');
grid on; % Add grid