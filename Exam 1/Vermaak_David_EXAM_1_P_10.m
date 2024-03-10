% Define the Coefficients
coefficients = [1, 3.2, -5.4, 12.3, 5.4, -3.2, 1];

% Find Roots
roots_list = roots(coefficients);

% Find Real Roots
real_roots = sum(isreal(roots_list));

% Find pairs of complex-conjugate roots
complex_conjugate_roots = sum(~isreal(roots_list)) / 2;

% Find the biggest negative real root
negative_real_roots = roots_list(real_roots & roots_list < 0);
biggest_negative_real_root = max(negative_real_roots);

% Find the real part of the complex conjugate root
complex_roots = roots_list(~isreal(roots_list));
imaginary_parts = imag(complex_roots);
real_part_complex_root = real(complex_roots(imaginary_parts == max(imaginary_parts)));

% Display the results
fprintf('Number of real roots: %d\n', real_roots);
fprintf('Number of pairs of complex-conjugate roots: %d\n', complex_conjugate_roots);
fprintf('Value of the biggest negative real root: %.4f\n', biggest_negative_real_root);
fprintf('Real part of the complex conjugate root with the larger imaginary part: %.4f\n', real_part_complex_root);
