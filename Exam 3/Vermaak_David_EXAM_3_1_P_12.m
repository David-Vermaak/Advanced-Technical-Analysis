% Given vectors
C = [3, 2, 5];
D = [-2, -4, -8];

% Q29. x component of C x D vector
cross_product_CD = cross(C, D)
x_component_CD = cross_product_CD(1);
disp(['Q29. The x component of C x D vector is ', num2str(x_component_CD)]);

% Q30. y component of C x D vector
y_component_CD = cross_product_CD(2);
disp(['Q30. The y component of C x D vector is ', num2str(y_component_CD)]);

% Q31. z component of C x D vector
z_component_CD = cross_product_CD(3);
disp(['Q31. The z component of C x D vector is ', num2str(z_component_CD)]);

