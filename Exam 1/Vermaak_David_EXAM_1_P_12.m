% Define the range of t values
t = linspace(0, 10, 1000);
% Formulas
x = 10 * cos(3 * t) + 2 * sin(20 * t);
y = 10 * t;
z = 10 * sin(3 * t) - 2 * cos(20 * t);

%Plot
figure;
plot(t, x, 'b', t, y, 'g', t, z, 'r');

xlabel('Time (t)');
ylabel('Value');
legend('x(t)', 'z(t)');
title('Plot of x(t) and z(t) vs. Time');
grid on;
% Restrict the vertical range to -20 to 20
ylim([-20, 20]);

t_x = 1;
t_z = 2;
x_value = interp1(t, x, t_x);
z_value = interp1(t, z, t_z);
fprintf('Value of x for t=1: %.2f\n', x_value);
fprintf('Value of z for t=2: %.2f\n', z_value);
