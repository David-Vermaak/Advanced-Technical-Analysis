% Given data
a = 100; % Minimum value
b = 120; % Maximum value

% Q19. Probability that force will be X = 0 N (not applicable for a continuous distribution)

% Q20. Probability that force will be 105 <= X <= 110 N
c1 = 105;
d1 = 110;
prob_range_1 = (d1 - c1) / (b - a);
disp(['Q20. Probability that force will be 105 <= X <= 110 N is ', num2str(prob_range_1)]);

% Q21. Probability that force will be 110 <= X <= 120 N
c2 = 110;
d2 = 120;
prob_range_2 = (d2 - c2) / (b - a);
disp(['Q21. Probability that force will be 110 <= X <= 120 N is ', num2str(prob_range_2)]);