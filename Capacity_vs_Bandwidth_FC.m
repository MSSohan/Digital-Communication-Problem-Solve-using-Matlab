%Bandwidth vs Capacity with Fading Channel;
clc;
clear all;
P = 1;
N0 = 1;
B = [0:51];
h1=input('h1='); %h1=[h1]^2
h2=input('h2='); %h2=[h2]^2
h3=input('h3='); %h3=[h3]^2
C1 = B.*log2(1+h1*P./(N0*B));
C2 = B.*log2(1+h2*P./(N0*B));
C3 = B.*log2(1+h3*P./(N0*B));
plot(B,C1,'r',B,C2,'g',B,C3,'c')
xlabel('Bandwidth(B) Hz');
ylabel('Capacity(C) bit/sec');  
title('Bandwidth vs Capacity');
legend('|h|2=0.5','|h|2=0.8','|h|2=1');
grid on;