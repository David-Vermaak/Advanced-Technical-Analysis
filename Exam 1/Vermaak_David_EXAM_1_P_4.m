% Tank height
H1=10; H2=18; H3=23;
% Tank radius
R1=5; R2=8; R3=12;
h = input('Height of the water (h): ');

% Calculate volume based on the height
if h >= 0 && h <= H1
    V = pi() * R1^2 * h;
elseif h > H1 && h <= H2
    V = pi() * R2^2 * (h - H1) + pi() * R1^2 * H1;
elseif h > H2 && h <= H3
    V = pi() * R3^2 * (h - H2) + pi() * R2^2 * (H2 - H1) + pi() * R1^2 * H1;
else
    disp('Invalid height input. Height must be between 0 and 23.');
    return;
end

% Display the calculated volume
fprintf('Volume of water in the tank: %.2f cubic ft\n', V);
