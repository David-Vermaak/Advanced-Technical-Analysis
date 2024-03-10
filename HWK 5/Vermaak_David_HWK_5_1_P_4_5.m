coefficients = [2, 6.4721, 10.4721, 10.4721, 6.4721, 2];  % Coefficients of the polynomial equation
roots_of_equation = roots(coefficients);  % Find the roots

real_roots = sum(imag(roots_of_equation) == 0);
complex_conjugate_pairs = sum(mod(imag(roots_of_equation), 1e-10) ~= 0);  % Accounting for small numerical errors

fprintf('Number of real roots: %d\n', real_roots);
fprintf('Number of complex-conjugate pairs of roots: %d\n', complex_conjugate_pairs);

if real_roots > 0
    fprintf('Value of the real root: %.4f\n', roots_of_equation(find(imag(roots_of_equation) == 0, 1)));
end

if complex_conjugate_pairs > 0
    complex_roots = roots_of_equation(imag(roots_of_equation) ~= 0);
    imaginary_part = abs(imag(complex_roots(1)));  % Taking the absolute value of the imaginary part
    fprintf('Absolute value of the imaginary part of the complex conjugate root: %.4f\n', imaginary_part);
end


complex_roots = roots_of_equation(imag(roots_of_equation) ~= 0);
[~, sorted_indices] = sort(abs(imag(complex_roots)), 'descend');  % Sort indices based on descending absolute value of imaginary parts

root_with_highest_imaginary_part = complex_roots(sorted_indices(1));  % Select the root with the highest imaginary part
real_part = real(root_with_highest_imaginary_part);

fprintf('Value of the real part of the complex conjugate root with higher imaginary part: %.4f\n', real_part);