% Given data
x_values = [-4, -2, 0, 2, 4];
num_samples = [1500, 3500, 3000, 1000, 1000];

% Total number of samples
total_samples = sum(num_samples);

% Probability density function (pdf)
pdf = num_samples / total_samples;

% Plotting the pdf
figure;
bar(x_values, pdf);
title('Probability Density Function (pdf)');
xlabel('Voltage, V');
ylabel('Probability');
grid on;


pdf_at_minus_2 = pdf(x_values == -2);
disp(['The pdf value for x=-2 V is ', num2str(pdf_at_minus_2)]);


pdf_at_0 = pdf(x_values == 0);
disp(['The pdf value for x=0 V is ', num2str(pdf_at_0)]);


pdf_at_4 = pdf(x_values == 4);
disp(['The pdf value for x=4 V is ', num2str(pdf_at_4)]);
