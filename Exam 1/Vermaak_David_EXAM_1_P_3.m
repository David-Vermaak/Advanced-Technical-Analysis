% Withdrawal amount 
A = 20000;
% Input
r = input('Annual interest rate as a decimal (r): ');
N = input('Number of years (N): ');

% Calculate the initial deposit amount (P)
P = A * ((1 + r)^N - 1) / (r * (1 + r)^N);

% Display the result
fprintf('The initial amount (P) is $%.2f\n', P);
