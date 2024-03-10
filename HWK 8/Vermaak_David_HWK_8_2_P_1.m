% Define the function
f = @(x) 2 .* exp(-x) .* sin(3 .* x.^2);

% Define the domain
x = linspace(0, 5, 1000);

% Values of N to consider
Ns = [21, 501];

% Initialize arrays to store results
derivatives = cell(length(Ns), 1);
xi_values = cell(length(Ns), 1);  % Store the corresponding xi values

% Calculate the approximate derivatives for each value of N
for i = 1:length(Ns)
    N = Ns(i)
    
    % Generate the points in the domain
    xi = linspace(0, 5, N);
    
    % Calculate the step size
    h = xi(2) - xi(1)
    
    % Calculate the approximate derivative using finite differences
    yi = f(xi);
    derivative = diff(yi) ./ h;
    
    % Store the result
    derivatives{i} = derivative;
    xi_values{i} = xi(1:end-1);  % Store the corresponding xi values

end



% Calculate the exact derivative
syms t;
y = 2 .* exp(-t) .* sin(3 .* t.^2);

% Differentiate the function
dy_dt = diff(y);

% Prompt the user for x
x_value = input('Enter a value x to evaluate the derivative at: ');
% Calculate the exact derivative
derivative_at_x = subs(dy_dt, t, x_value);

% Convert to a numeric value
derivative_at_x = double(derivative_at_x);

% Display the exact derivative
disp(['The value of the exact derivative at x = ' num2str(x_value) ' is: ' num2str(derivative_at_x)]);

% Display the approximate derivatives at the user-defined x value
disp(['Approximate derivatives at x = ' num2str(x_value) ':']);
for i = 1:length(Ns)
    derivative_at_x_value = interp1(xi_values{i}, derivatives{i}, x_value, 'linear');
    disp(['For N = ' num2str(Ns(i)) ', Approximate derivative: ' num2str(derivative_at_x_value)]);
end


%Exact value of y' for x = 2.25: -2.5738
%Approx value of y' for x = 2.25 with N = 21: 0.2578
%Exact value of y' for x = 2.3: -2.6985
%Approx value of y' for x = 2.3 with N = 501: -2.6382

%The value of the exact derivative at x = 2.25 is: -2.5738
%Approximate derivatives at x = 2.25:
%For N = 21, Approximate derivative: -0.48457

%The value of the exact derivative at x = 2.3 is: -2.6985
%Approximate derivatives at x = 2.3:
%For N = 501, Approximate derivative: -2.6382
