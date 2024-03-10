years = [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002];
enrollment = [320, 330, 369, 350, 310, 370, 390, 400];

% Create a bar graph
figure;
stem(years, enrollment, 'b', 'filled');
xlabel('Year');
ylabel('Student Enrollment');
title('College Program Enrollment Trend Since 1995');
grid on;