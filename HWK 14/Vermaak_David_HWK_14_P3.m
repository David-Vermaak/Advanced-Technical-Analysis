% Given vectors
A = [5, -2, 4];
B = [3, -6, 7];
C = [2, 3, -5];
D = [-1, -1, -1];

% Cross product of A and D
crossProductAD = cross(A, D);

% Cross product of (A x D) and B
result = cross(crossProductAD, B);

% Extracting components
xComponentResult = result(1);
yComponentResult = result(2);
zComponentResult = result(3);

% Display the results
disp(['x component of (A x D) x B vector = ', num2str(xComponentResult)])
disp(['y component of (A x D) x B vector = ', num2str(yComponentResult)])
disp(['z component of (A x D) x B vector = ', num2str(zComponentResult)])
