% Given data
x_values = [-4, -2, 0, 2, 4];
num_samples = [1500, 3500, 3000, 1000, 1000];

% Total number of samples
total_samples = sum(num_samples);

% Probability density function (pdf)
pdf = num_samples / total_samples;

% Cumulative Distribution Function (CDF)
cdf = cumsum(pdf);

% Plotting the CDF
figure;
stairs(x_values, cdf, 'LineWidth', 2);
title('Cumulative Distribution Function (CDF)');
xlabel('Voltage, V');
ylabel('Probability');
grid on;

% Q9. Probability that x < -1
prob_x_lt_minus_1 = cdf(x_values < -1);
disp(['The probability that x < -1 is ', num2str(prob_x_lt_minus_1(end))]);

% Q10. Probability that x < 3.5
prob_x_lt_3_5 = cdf(x_values < 3.5);
disp(['The probability that x < 3.5 is ', num2str(prob_x_lt_3_5(end))]);

% Q11. Probability that x < 6
prob_x_lt_6 = cdf(x_values < 6);
disp(['The probability that x < 6 is ', num2str(prob_x_lt_6(end))]);
