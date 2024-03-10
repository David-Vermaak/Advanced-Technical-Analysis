% Given vectors
A = [6, -2, 3];
B = [5, 4, -2];

% Q25. Length of A
length_A = norm(A);
disp(['Q25. The length of vector A is ', num2str(length_A)]);

% Q26. Length of B
length_B = norm(B);
disp(['Q26. The length of vector B is ', num2str(length_B)]);

% Q27. Scalar product A * B
scalar_product_AB = dot(A, B);
disp(['Q27. The scalar product (dot product) of vectors A and B is ', num2str(scalar_product_AB)]);

% Q28. Angle between vectors A and B in radians
angle_rad_AB = acosd(dot(A, B) / (norm(A) * norm(B))); % Calculate angle in degrees
disp(['Q28. The angle between vectors A and B in radians is ', num2str(deg2rad(angle_rad_AB))]);