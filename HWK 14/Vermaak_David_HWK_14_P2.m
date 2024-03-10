% Given vectors
A = [5, -2, 4];
B = [3, -6, 7];
C = [2, 3, -5];
D = [-1, -1, -1];

% Cross product of A and C
crossProductAC = cross(A, C)

% x component of A x C vector
xComponentAC = crossProductAC(1);
disp(['x component of A x C vector = ', num2str(xComponentAC)])

% y component of A x C vector
yComponentAC = crossProductAC(2);
disp(['y component of A x C vector = ', num2str(yComponentAC)])

% z component of A x C vector
zComponentAC = crossProductAC(3);
disp(['z component of A x C vector = ', num2str(zComponentAC)])
