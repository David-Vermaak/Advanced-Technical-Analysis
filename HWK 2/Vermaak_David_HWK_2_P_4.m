prompt = "Number of units: ";
x = input(prompt);

cost = calculateCost(x);
fprintf('For %d units: $%.2f\n', x, cost);



function Cost = calculateCost(y)
    if y <= 100
        Cost = y * 10;
    elseif y <= 1000
        Cost = 1000 + (y - 100) * 8;
    elseif y <= 10000
        Cost = 1000 + 9000 + (y - 1000) * 6;
    else
        Cost = 1000 + 9000 + 54000 + (y - 10000) * 5;
    end
end

