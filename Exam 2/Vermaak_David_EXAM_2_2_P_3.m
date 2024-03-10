syms t y(t);
dydt = diff(y, t) == 5*cos(6*t) + 20;

% Define the initial condition
y0 = y(0) == 40;

% Solve the differential equation
sol = dsolve(dydt, y0);

% Evaluate at t=10
t0 = 10;
y_t = subs(sol, t, t0);
y_t = double(y_t);

% Display the result
disp(['The value of y at t=10 is: ' num2str(y_t)]);