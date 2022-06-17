%Line Code Bipolar Pseudoternary
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
a=1;
for i=1:n
    x=[x i-1 i];
    if(m(i)== 0)
        y=[y a a];
        a=a*(-1);
    else
        y=[y 0 0];
    end
end

plot(x,y),axis([0,n,-2,2]);
title('Bipolar Pseudoternary/opposite of AMI');
xlabel('Time');
ylabel('Amplitude');
grid on;