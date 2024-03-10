% Speed readings
speed_readings = [61 59 57 43 76 74 82 86 73 32 21 56 62 63 62 72 83 24 43 22 35 54 65 45 42 67 43 46 23 15];

% Q1. Sample Mean
mean_speed = mean(speed_readings);
disp(['Q1. Sample Mean: ' num2str(mean_speed)]);

% Q2. Sample Mean-Square
mean_square_speed = meansqr(speed_readings);
disp(['Q2. Sample Mean-Square: ' num2str(mean_square_speed)]);

% Q3. Sample RMS (Root Mean Square)
rms_speed = rms(speed_readings);
disp(['Q3. Sample RMS: ' num2str(rms_speed)]);

% Q4. Sample Variance
var_speed = var(speed_readings);
disp(['Q4. Sample Variance: ' num2str(var_speed)]);

% Q5. Sample Standard Deviation
std_dev_speed = std(speed_readings);
disp(['Q5. Sample Standard Deviation: ' num2str(std_dev_speed)]);

% Q6. Sample Median
median_speed = median(speed_readings);
disp(['Q6. Sample Median: ' num2str(median_speed)]);

% Q7. Sample Mode
mode_speed = mode(speed_readings);
disp(['Q7. Sample Mode: ' num2str(mode_speed)]);

% Q8. Sample Range
range_speed = range(speed_readings);
disp(['Q8. Sample Range: ' num2str(range_speed)]);
