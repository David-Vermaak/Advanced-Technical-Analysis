% Given vectors
A = [2, 3, 6];
B = [4, -2, -3];
C = [4, 6, 2];
D = [-3, -6, -1];

% Cross product A x C
cross_product_AC = cross(A, C)

% Q20. x component of A x C vector
x_component_AC = cross_product_AC(1);
disp(['Q20. x component of A x C vector: ' num2str(x_component_AC)]);

% Q21. y component of A x C vector
y_component_AC = cross_product_AC(2);
disp(['Q21. y component of A x C vector: ' num2str(y_component_AC)]);

% Q22. z component of A x C vector
z_component_AC = cross_product_AC(3);
disp(['Q22. z component of A x C vector: ' num2str(z_component_AC)]);
