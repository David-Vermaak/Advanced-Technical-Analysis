matrix = [1,2,5;4,5,6;8,1,9]
row = 1;
col = 2;
[minor, cofactor, determinant] = matrix_operations(matrix, row, col);

disp('Minor:');
disp(minor);

disp('Cofactor:');
disp(cofactor);

disp('Determinant:');
disp(determinant);



function [minor, cofactor, determinant] = matrix_operations(matrix, row, col)
    % Check if the input matrix is square
    [m, n] = size(matrix);
    if m ~= n
        error('Input matrix must be square.');
    end
    
    % Check if row and column indices are within bounds
    if row < 1 || row > m || col < 1 || col > n
        error('Row and column indices are out of bounds.');
    end
    
    % Initialize matrices to store minor and cofactor values
    minor = zeros(m, n);
    cofactor = zeros(m, n);
    
    % Calculate minor and cofactor values
    for i = 1:m
        for j = 1:n
            sub_matrix = matrix([1:i-1, i+1:m], [1:j-1, j+1:n]);
            minor(i, j) = det(sub_matrix);
            cofactor(i, j) = (-1)^(i+j) * minor(i, j);
        end
    end
    
    % Calculate determinant using cofactor expansion along the given row
    determinant = sum(matrix(row,:) .* cofactor(row,:));
end
