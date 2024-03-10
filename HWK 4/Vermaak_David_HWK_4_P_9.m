c = 0.5; 
u = (-pi):(0.01*pi):(pi);
v = (0):(0.1):(pi);


[x, y] = meshgrid(u, v);

X = (c + cos(y)) .* cos(x);
Y = (c + cos(y)) .* sin(x);
Z = sin(y) .* cos(y);

% Create a 3D surface plot
figure;
surf(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D Surface Plot');
colormap('parula'); % Set colormap for better visualization
colorbar; % Add colorbar to the plot