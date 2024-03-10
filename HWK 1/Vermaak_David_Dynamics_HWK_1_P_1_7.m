% Define the range of t values
t = 0:0.1:50; % You can adjust the range and step size as needed

% Initialize arrays to store the function values
f = zeros(size(t));
f2 = zeros(size(t));

% Calculate the function values based on the conditions for f(t)
for i = 1:length(t)
    if t(i) <= 25
        f(i) = 4 * t(i)^2;
    else
        f(i) = 103 * t(i);
    end
end

% Calculate the function values for f2(t)
f2 = 88 * t;

% Plot both functions on the same graph
figure;
plot(t, f, 'b', 'LineWidth', 2);
hold on; % Allow multiple plots on the same graph
plot(t, f2, 'r', 'LineWidth', 2);
xlabel('t');
ylabel('Distance (ft)');
title('Graphs of f(t) and f2(t)');
grid on;
legend; % Display the legend to differentiate between the two functions
hold off; % Release the hold on for future plots
