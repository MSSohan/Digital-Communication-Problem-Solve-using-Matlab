%Power vs Capacity with Fading Channel;
clc;
clear all;
B = 51;
N0 = 1;
P = [0:10^4];
h1=input('h1=');    %h1=[h1]^2
h2=input('h2=');    %h2=[h2]^2
h3=input('h3=');    %h3=[h3]^2
C1 = B.*log2(1+h1*P./(N0*B));
C2 = B.*log2(1+h2*P./(N0*B));
C3 = B.*log2(1+h3*P./(N0*B));
plot(P,C1,'r',P,C2,'g',P,C3,'c')
xlabel('Power(P)');
ylabel('Capacity(C) bit/sec');  
title('Capacity vs Power');
legend('|h|2=0.5','|h|2=0.8','|h|2=1');
grid on;