a = 10; b = 1; c = 0.3;
t = 0:(0.1*pi):(2*pi); % Time values from 0 to 2 pi seconds with a step of 0.01 pi

x = cos(t) .* sqrt(b^2 - c^2 * (cos(a*t)).^2);
y = sin(t).*( sqrt(b.^2-c.^2 .* (cos(a.*t)).^2 ) );
z = c * cos(a*t);

% Create a 3D plot
figure;
plot3(x, y, z, 'b-', 'LineWidth', 2);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D Curve');
grid on;