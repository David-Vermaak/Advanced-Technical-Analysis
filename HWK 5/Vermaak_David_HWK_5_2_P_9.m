cycle = (2*pi)/5;  % Calculate the period of the function
t = linspace(0, (3*cycle), 1000);

y = 15 * cos(5*t + ((60/180)*pi));

% Create the plot
plot(t, y, 'b', 'LineWidth', 2);
xlabel('Time');
ylabel('y');
title('Plot of y = Acos(wt + a)');
grid on;