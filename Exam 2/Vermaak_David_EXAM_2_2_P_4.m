syms t y(t)
eq = diff(y, t, t) + 5*diff(y, t) + 6*y == 5*cos(6*t) + 20;
dy = diff(y, t);
y0 = y(0) == 20;
dy0 = dy(0) == 0;

% Solve the differential equation
y = dsolve(eq, [y0, dy0]);

% Evaluate y at t = 10
t_value = 10;
y_value = subs(y, t, t_value);
y_value = double(y_value);

disp(['The value of y for t = 10 is: ', num2str(y_value)]);
