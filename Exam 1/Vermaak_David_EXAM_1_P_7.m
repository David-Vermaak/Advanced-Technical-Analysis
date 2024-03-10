% Given values
a = 10;
r = 0.8;

% Input
n = input('Number of terms (n): ');

% Initialize the sum
Sn = 0;

% Calculate the sum using a for loop
for i = 0:(n-1)
    Sn = Sn + a * r^i;
end

% Calculate the sum for an infinite number of terms
S_infinite = a / (1 - r);

% Display the results
fprintf('Sum of the first %d terms: %.4f\n', n, Sn);
fprintf('Sum for an infinite number of terms: %.4f\n', S_infinite);
