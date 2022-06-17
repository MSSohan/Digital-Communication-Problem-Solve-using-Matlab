%Line code POLAR NRZ-Invert
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
a=1;
for i=1:n
    x=[x i-1 i];
    if(m(i)==1)
        y=[y -a -a];
    else
        y=[y a a];
    end
    a=y(length(y));
end
plot(x,y),axis([0,n,-2,2]);
title('Polar NRZ I');
xlabel('Time');
ylabel('Amplitude');
grid on;