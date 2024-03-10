% Define the differential equation
dydt = @(t, y) 400 * cos(75 * t) - 50 * y;

% Define the initial condition
y0 = 20;

% Define the time span
tspan = [0 1];

% Solve the differential equation
[t, y] = ode45(dydt, tspan, y0);

% Plot the time response with specified axis scales
plot(t, y);
xlabel('Time (t)');
ylabel('y(t)');
title('Time Response of y(t)');
axis([0 1 -10 30]);
grid on;

% Find the value of y(t) for t = 0.5 sec
y_value_at_t_05 = interp1(t, y, 0.5)
