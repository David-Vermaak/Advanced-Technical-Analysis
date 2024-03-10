% Define the differential equation
dydt1 = @(t, y, z) z;
dydt2 = @(t, y, z) 832 - 4 * z - 104 * y;

% Define the initial conditions
y0 = 0;
z0 = 0;

% Define the time span
tspan = [0 4];

% Solve the differential equation using ode45
[t, sol] = ode45(@(t, sol) [dydt1(t, sol(1), sol(2)); dydt2(t, sol(1), sol(2))], tspan, [y0, z0]);

% Extract the y(t) values
y = sol(:, 1);

% Plot the time response
plot(t, y);
xlabel('Time (t)');
ylabel('y(t)');
title('Time Response of y(t)');
axis([0 4 0 14]);
grid on;

% Find the value of y(t) for t = 1 sec
y_value_at_t = interp1(t, y, 1)
