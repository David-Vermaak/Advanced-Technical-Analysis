% Parameters
n = 10;  % Number of trials
k = 3;   % Number of successes
p = 0.5; % Probability of success (getting a head)

% Binomial coefficient
binomial_coeff = nchoosek(n, k);

% Binomial probability
probability = binomial_coeff * (p^k) * ((1 - p)^(n - k));

disp(['The probability of getting exactly three heads in ten trials is ', num2str(probability)]);
