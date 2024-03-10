% Given vectors
A = [5, -2, 4];
B = [3, -6, 7];
C = [2, 3, -5];
D = [-1, -1, -1];

% Cross product of A and D
crossProductAD = cross(A, D);

% Triple scalar product of (A x D) and C
tripleScalarProduct = dot(crossProductAD, C);

% Display the result
disp(['Triple scalar product (A x D) * C = ', num2str(tripleScalarProduct)])
