syms x;
y = x .* exp(-2*x);
dy_dx = diff(y, x);
dy_dx
