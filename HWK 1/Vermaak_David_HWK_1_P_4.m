A =  1000;   % amount deposited at the beginning of each year ($1,000)
r =  0.05;   % annual interest rate expressed as a fraction: 5%
percentage = r * 100;

% F = final value in dollars at the end of N years
fprintf('\nWith an initial amount of $%.2f', A);
fprintf(' and an intrest rate of %.0f%% \n', percentage)

for N = 10:10:40 % number of years from 10 to 40 increases by 10 each time
    
    F = A *(1+r)* (((1 + r)^N - 1) / r);  
    % Display the current value of F with formatting
    fprintf('The amount is $%.2f after %d years\n', F, N);
end


r =  0.10;   % annual interest rate expressed as a fraction: 10% 

percentage = r * 100;

% F = final value in dollars at the end of N years
fprintf('\nWith an initial amount of $%.2f', A);
fprintf(' and an intrest rate of %.0f%% \n', percentage)

for N = 10:10:40 % number of years from 10 to 40 increases by 10 each time
    
    F = A *(1+r)* (((1 + r)^N - 1) / r);
    % Display the current value of F with formatting
    fprintf('The amount is $%.2f after %d years\n', F, N);
end