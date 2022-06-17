%Line code Unipolar NRZ
clc;
clear all;
k=input('Enter the last two digit of ID No: ');
b=dec2bin(k,16);
fprintf('Binary Number of those digit 16 bit long: ');
m = sprintf('%s',b)-'0';
fprintf('%d ',m);
n = length(m);
x = [];
y = [];

for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 0 0];
    else
        y=[y 1 1];
    end
end

plot(x,y),axis([0,n,-2,2]);
title('Unipolar NRZ');
xlabel('Time');
ylabel('Amplitude');
grid on;