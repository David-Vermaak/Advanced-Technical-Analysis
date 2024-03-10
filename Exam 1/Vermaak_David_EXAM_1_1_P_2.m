% Coefficient matrix A
A = [1.3, 2.1, -3.2; 0, 2.7, -4.6; 8.2, 0, -4.2]

% Constant matrix B
B = [12; 0; 200];

% Solve for the variable matrix X
X = A \ B;

% Display the solution
disp('Solution for x, y, and z:');
disp(X);
