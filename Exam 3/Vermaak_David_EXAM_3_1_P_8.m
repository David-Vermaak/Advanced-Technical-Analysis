% Given data
a = 100; % Minimum value
b = 120; % Maximum value

% Probability density function (pdf) for a uniform distribution
pdf_uniform = 1 / (b - a);

% Plotting the pdf
x_values = linspace(a, b, 1000);
pdf_values = pdf_uniform * ones(size(x_values));

figure;
plot(x_values, pdf_values, 'LineWidth', 2);
title('Probability Density Function (pdf) of Uniform Distribution');
xlabel('Force, X(t) (N)');
ylabel('Probability Density');
grid on;

% Determine the level of the distribution
disp(['The level of the uniform distribution is ', num2str(pdf_uniform)]);

