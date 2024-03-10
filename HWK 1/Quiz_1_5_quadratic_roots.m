% Prompt the user for coefficients
a = input("Enter coefficient a: ");
b = input("Enter coefficient b: ");
c = input("Enter coefficient c: ");

% Calculate roots
[x1, x2] = quadratic_roots(a, b, c);
fprintf("Roots: x1 = %.4f, x2 = %.4f\n", x1, x2);

% Determine bigger or smaller root
if ~isnan(x1) && ~isnan(x2)
    bigger_root = max(x1, x2);
    smaller_root = min(x1, x2);
    fprintf("Bigger root: %.4f\n", bigger_root);
    fprintf("Smaller root: %.4f\n", smaller_root);
else
    fprintf("Complex roots are not handled in this code.\n");
end


function [x1, x2] = quadratic_roots(a, b, c)
    % Calculate the discriminant
    D = b^2 - 4*a*c;
    
    % Check the nature of roots
    if D > 0
        % Two real and distinct roots
        x1 = (-b + sqrt(D)) / (2*a);
        x2 = (-b - sqrt(D)) / (2*a);
    elseif D == 0
        % Two real and equal roots
        x1 = -b / (2*a);
        x2 = x1;
    else
        % Complex roots (not handled in this code)
        x1 = NaN;
        x2 = NaN;
    end
end