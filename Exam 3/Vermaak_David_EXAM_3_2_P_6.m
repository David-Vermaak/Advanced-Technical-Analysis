% Given vectors
A = [2, 3, 6];
B = [4, -2, -3];
C = [4, 6, 2];
D = [-3, -6, -1];

% Triple scalar product (C x B) * A
triple_scalar_product = dot(cross(C, B), A);
disp(['Q23. Triple scalar product (C x B) * A: ' num2str(triple_scalar_product)]);
