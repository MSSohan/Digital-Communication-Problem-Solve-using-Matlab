%Line code POLAR NRZ-Level
clc;
clear all;
k=input('Enter the last two digit of ID No: ');
b=dec2bin(k);
fprintf('Binary Number of those digit: ');
m = sprintf('%s',b)-'0';
fprintf('%d ',m);
n = length(m);
x = [];
y = [];
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 1 1];
    else
        y=[y -1 -1];
    end
end
plot(x,y);
axis([0,n,-3,3]);
title('Polar NRZ-L');
xlabel('Time');
ylabel('Amplitude');
grid on;