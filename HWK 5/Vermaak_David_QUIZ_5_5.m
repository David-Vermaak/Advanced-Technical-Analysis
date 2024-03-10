% Define the coefficients of the first polynomial
coefficients1 = [5, 6, 39];

% Define the coefficients of the second polynomial
coefficients2 = [12, -2, 23];

% Multiply the polynomials using the conv function
result_coefficients = conv(coefficients1, coefficients2);

% Determine the degree of the result polynomial
result_degree = length(result_coefficients) - 1;

% Initialize an empty string for the result polynomial
result_polynomial = '';

% Construct the result polynomial expression
for i = 1:result_degree + 1
    coefficient = result_coefficients(i);
    if coefficient ~= 0
        % Determine the term's degree based on its position in the coefficients array
        term_degree = result_degree - (i - 1);
        
        % Construct the term string
        if term_degree == 0
            term_string = num2str(coefficient);
        elseif term_degree == 1
            term_string = [num2str(coefficient), 'x'];
        else
            term_string = [num2str(coefficient), 'x^', num2str(term_degree)];
        end
        
        % Append the term string to the result polynomial
        if isempty(result_polynomial)
            result_polynomial = term_string;
        else
            result_polynomial = [result_polynomial, ' + ', term_string];
        end
    end
end

% Display the result
disp(['Result: ', result_polynomial]);
