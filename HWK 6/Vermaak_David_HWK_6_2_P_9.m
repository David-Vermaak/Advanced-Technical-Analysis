% Define the function
syms x
f =  -2*x^3 - 3*x^2 + 36*x - 12;

% Define the derivative function
df = diff(f);
df = simplify(df);

crit_pts = solve(df)

% Plot the original function and its derivative using fplot
figure;
fplot(f, 'b', 'LineWidth', 2)
hold on;
fplot(df, 'r', 'LineWidth', 2)
hold on
plot(double(crit_pts), double(subs(f,crit_pts)),'go', 'LineWidth', 2)

xlabel('x');
ylabel('y');
title('Function and its Derivative');
legend('f(x) = -2x^3-3x^2+36x-12',  "f'(x) = -6x^2-6x+36", 'Local Max/Min', 'Location', 'southwest');
text(-3.5,-105,'Local Min.')
text(1.35,20,'Local Max.')
grid on;
ylim([-150, 40]);
hold off;