%Bandwidth vs Capacity 
clc;
clear all;
P = 1;
N0 = 1;
B = [0:51];
C = B.*log2(1+P./(N0*B));
plot(B,C,'b')
xlabel('Bandwidth(B) Hz');
ylabel('Capacity(C) bit/sec');  
title('Bandwidth vs Capacity');
legend('Bandwidth vs Capacity');
grid on;