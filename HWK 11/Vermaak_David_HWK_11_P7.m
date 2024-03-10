% Define the differential equation as a system of first-order equations
dydt1 = @(t, y, z) z;
dydt2 = @(t, y, z) 24 * exp(-4 * t) - 3 * z - 2 * y;

% Define the initial conditions
y0 = 10;
z0 = 5;

% Define the time span
tspan = [0 5];

% Solve the differential equation using ode45
[t, sol] = ode45(@(t, sol) [dydt1(t, sol(1), sol(2)); dydt2(t, sol(1), sol(2))], tspan, [y0, z0]);

% Extract the y(t) values
y = sol(:, 1);

% Plot the time response
plot(t, y);
xlabel('Time (t)');
ylabel('y(t)');
title('Time Response of y(t)');
axis([0 5 0 12]);
grid on;

% Find the value of y(t) for t = 1 sec
y_value_at_t_1 = interp1(t, y, 1)
