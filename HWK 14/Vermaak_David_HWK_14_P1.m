% Given vectors
A = [5, -2, 4];
B = [3, -6, 7];
C = [2, 3, -5];
D = [-1, -1, -1];

% Length of A
lengthA = norm(A);
disp(['Length of A = ', num2str(lengthA)])

% Length of B
lengthB = norm(B);
disp(['Length of B = ', num2str(lengthB)])

% Scalar product of A and B
scalarProductAB = dot(A, B);
disp(['Scalar product of A and B = ', num2str(scalarProductAB)])

% Angle between A and B (rad)
angleAB_rad = acos(dot(A, B) / (norm(A) * norm(B)));
disp(['Angle between A and B (in radians) = ', num2str(angleAB_rad)])
