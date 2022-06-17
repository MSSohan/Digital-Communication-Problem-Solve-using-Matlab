%SNR vs Capacity with Fading Channel;
clc;
clear all;
B = 51;
N0 = 1;
P = [0:10^3];
h1=input('h1='); %h1=[h1]^2
h2=input('h2='); %h2=[h2]^2
h3=input('h3='); %h3=[h3]^2
S1=(h1*P./(N0*B));
S2=(h2*P./(N0*B));
S3=(h3*P./(N0*B));
SdB1=10*log10(S1);
SdB2=10*log10(S2);
SdB3=10*log10(S3);
C1 = B.*log2(1+S1);
C2 = B.*log2(1+S2);
C3 = B.*log2(1+S3);
figure(1);
plot(S1,C1,'r',S2,C2,'g',S3,C3,'c')
xlabel('SNR(linear)');
ylabel('Capacity(C) bit/sec');  
title('SNR vs Capacity')
legend('|h|2=0.5','|h|2=0.8','|h|2=1');
grid on;
figure(2);
plot(SdB1,C1,'r',SdB2,C2,'g',SdB3,C3,'c')
xlabel('SNR(dB)');
ylabel('Capacity(C) bit/sec');  
title('SNR vs Capacity')
legend('|h|2=0.5','|h|2=0.8','|h|2=1');
grid on;