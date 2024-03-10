theta = linspace(0, 2*pi, 1000);

g = sin(theta).^8;

% Create a polar plot
polarplot(theta, g, 'b', 'LineWidth', 2);
title('Polar Plot of g(\theta) = sin^8(\theta)');