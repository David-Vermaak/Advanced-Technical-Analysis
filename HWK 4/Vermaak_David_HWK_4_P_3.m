v1 = 0:0.1:10; % Voltage values from 0 to 10 Volts with a step of 0.1 Volts
V3 = 0.1 * v1.^2 + 5;   % Calculate the output Voltage using the given equation
figure;  % Create the plot
plot(v1, V3, 'b-', 'LineWidth', 2); % Plot the output Voltage as a function of input voltage
xlabel('Input Voltage (V)');
ylabel('Output Voltage (V)');
title('Output Voltage vs. Input Voltage');
grid on; % Add grid