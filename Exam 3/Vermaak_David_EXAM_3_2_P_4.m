% Given vectors
A = [2, 3, 6];
B = [4, -2, -3];
C = [4, 6, 2];
D = [-3, -6, -1];

% Q16. Length of vector B
length_B = norm(B);
disp(['Q16. Length of vector B: ' num2str(length_B)]);

% Q17. Length of vector D
length_D = norm(D);
disp(['Q17. Length of vector D: ' num2str(length_D)]);

% Q18. Scalar product B * D
scalar_product_BD = dot(B, D);
disp(['Q18. Scalar product B * D: ' num2str(scalar_product_BD)]);

% Q19. Angle between vectors B and D [rad]
angle_rad_BD = acosd(dot(B, D) / (norm(B) * norm(D)));
disp(['Q19. Angle between vectors B and D [rad]: ' num2str(angle_rad_BD)]);