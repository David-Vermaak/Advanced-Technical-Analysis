% Define the differential equation
dydt = @(t, y) 20 * cos(5 * t) + 8;

% Define the initial condition
y0 = 10;

% Define the time span
tspan = [0 5];

% Solve the differential equation
[t, y] = ode45(dydt, tspan, y0);

t_value = 2;  % The time value you want to find
y_value = interp1(t, y, t_value);

% Plot y(t)
plot(t, y);
xlabel('Time (t)');
ylabel('y(t)');
title('Time Response of y(t)');
grid on;

y_value_at_t_2 = interp1(t, y, 2)
