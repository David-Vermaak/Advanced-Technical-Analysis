total_pay = 0; % Initialize total payment

for day = 1:30
    payment = daily_pay(day);  % Calculate payment for the day
    total_pay = total_pay + payment;  % Add payment to total
    fprintf('Day %d: Earned $%.2f\n', day, payment / 100);  % Convert payment to dollars and print
end

fprintf('Total earnings over 30 days: $%.2f\n', total_pay / 100);  % Print total earnings in dollars


function payment = daily_pay(day)
    payment = 2^(day - 1);  % Calculate the payment for the day
end