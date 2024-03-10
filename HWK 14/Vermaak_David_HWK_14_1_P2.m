% Given vectors
A = [5, -2, 4];
B = [3, -6, 7];
C = [2, 3, -5];
D = [-1, -1, -1];

% Length of C
lengthC = norm(C);
disp(['Length of C = ', num2str(lengthC)])

% Length of D
lengthD = norm(D);
disp(['Length of D = ', num2str(lengthD)])

% Scalar product of C and D
scalarProductCD = dot(C, D);
disp(['Scalar product of C and D = ', num2str(scalarProductCD)])

% Angle between C and D (rad)
angleCD_rad = acos(dot(C, D) / (norm(C) * norm(D)));
disp(['Angle between C and D (in radians) = ', num2str(angleCD_rad)])


% Calculate the cross product C x D
result_cross = cross(C, D);

% Extract components of the cross product
x_component = result_cross(1);
y_component = result_cross(2);
z_component = result_cross(3);

% Display the results
fprintf('Q.9 The x component of C x D vector is: %d\n', x_component);
fprintf('Q.10 The y component of C x D vector is: %d\n', y_component);
fprintf('Q.11 The z component of C x D vector is: %d\n', z_component);


% Calculate the first cross product C x D
result_cross_CD = cross(C, D);

% Calculate the second cross product (C x D) x A
result_cross_CDxA = cross(result_cross_CD, A);

% Extract components of the result
x_component_CDxA = result_cross_CDxA(1);
y_component_CDxA = result_cross_CDxA(2);
z_component_CDxA = result_cross_CDxA(3);

% Calculate the triple scalar product (C x D) * A
triple_scalar_product = dot(result_cross_CD, A);


% Display the results
fprintf('Q.12 The x component of (C x D) x A vector is: %d\n', x_component_CDxA);
fprintf('Q.13 The y component of (C x D) x A vector is: %d\n', y_component_CDxA);
fprintf('Q.14 The z component of (C x D) x A vector is: %d\n', z_component_CDxA);
fprintf('Q.15 The value of the triple scalar product (C x D) * A is: %d\n', triple_scalar_product);

