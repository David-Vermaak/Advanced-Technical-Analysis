% Prompt the user for an integer input
N = input('Enter an integer N: ');

% Check if N is a non-negative integer
if ~isnumeric(N) || N < 0 || mod(N, 1) ~= 0
    error('Please enter a non-negative integer.');
end

% Initialize the factorial result to 1
factorial_result = 1;

% Calculate the factorial using a loop
for i = 1:N
    factorial_result = factorial_result * i;
end

% Display the factorial result
fprintf('The factorial of %d is %d\n', N, factorial_result);
