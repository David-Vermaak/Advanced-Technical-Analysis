syms x;
y = 3*x^5 * (sin(5*x))^2 + 100*exp(-4*x) * cos(3*x);

% Calculate the first derivative
dydx = diff(y, x);

% Calculate the second derivative
d2ydx2 = diff(dydx, x);

% Evaluate the first derivative at x=0.01
x_val_1 = 0.01;
dydx_at_x_val_1 = double(subs(dydx, x, x_val_1));

% Evaluate the second derivative at x=0.1
x_val_2 = 0.1;
d2ydx2_at_x_val_2 = double(subs(d2ydx2, x, x_val_2));

% Display the results
disp(['First derivative at x=0.01: ' num2str(dydx_at_x_val_1)]);
disp(['Second derivative at x=0.1: ' num2str(d2ydx2_at_x_val_2)]);