% Given data
x_values = [-4, -2, 0, 2, 4];
num_samples = [1500, 3500, 3000, 1000, 1000];

% Total number of samples
total_samples = sum(num_samples);

% Probability density function (pdf)
pdf = num_samples / total_samples;

% Calculate mean value
mean_value = sum(x_values .* pdf);
disp(['Q12. The mean value is ', num2str(mean_value)]);

% Calculate mean-square value
mean_square_value = sum((x_values.^2) .* pdf);
disp(['Q13. The mean-square value is ', num2str(mean_square_value)]);

% Calculate rms value
rms_value = sqrt(mean_square_value);
disp(['Q14. The rms value is ', num2str(rms_value)]);

% Calculate variance
variance_value = mean_square_value - mean_value^2;
disp(['Q15. The variance is ', num2str(variance_value)]);

% Calculate standard deviation
std_deviation = sqrt(variance_value);
disp(['Q16. The standard deviation is ', num2str(std_deviation)]);
