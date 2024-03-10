% Given data
mu = 500;      % Mean value
sigma = 40;    % Standard deviation

% Q22. Probability that force will be X >= 500 N
prob_X_ge_500 = 1 - normcdf(500, mu, sigma);
disp(['Q22. Probability that force will be X >= 500 N is ', num2str(prob_X_ge_500)]);

% Q23. Probability that force will be X <= 520 N
prob_X_le_520 = normcdf(520, mu, sigma);
disp(['Q23. Probability that force will be X <= 520 N is ', num2str(prob_X_le_520)]);

% Q24. Probability that force will be 480 <= X <= 560 N
prob_X_between_480_560 = normcdf(560, mu, sigma) - normcdf(480, mu, sigma);
disp(['Q24. Probability that force will be 480 <= X <= 560 N is ', num2str(prob_X_between_480_560)]);
