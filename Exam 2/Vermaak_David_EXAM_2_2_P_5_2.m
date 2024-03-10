% Q7 Finding numerical differentation using matlab
% Step size
h1 = (5 - 0) / (21 - 1);

% Domain
x1 = 0:h1:5;

% Function
y = 2 * exp(-x1) .* sin(3 * x1.^2);

% Numerical difference
Array = diff(y) / h1;

% Loop to display x values and corresponding Array values
for i = 1:length(x1)-1
    disp(['x Value: ', num2str(x1(i)), ', Array Value: ', num2str(Array(i))]);
end