t = linspace(5, 15, 1000);

x = 10 * cos(2 * t);
y = 10 * sin(2 * t);
z = 10 * t;

% Create a 3D plot
figure;
plot3(x, y, z, 'b', 'LineWidth', 2);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D Plot: x = 10 * cos(2t), y = 10 * sin(2t), z = 10t');
grid on;