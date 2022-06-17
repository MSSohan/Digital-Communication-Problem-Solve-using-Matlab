%SNR vs Capacity;
B = 51;
N0 = 1;
P = [0:10^3];
S=(P./(N0*B));
SdB=10*log10(S);
C = B.*log2(1+S);
figure(1);
plot(S,C,'r')
xlabel('SNR(linear)');
ylabel('Capacity(C) bit/sec');  
title('SNR vs Capacity')
legend('SNR vs Capacity(linear)');
grid on;
figure(2);
plot(SdB,C,'k')
xlabel('SNR(dB)');
ylabel('Capacity(C) bit/sec');  
title('SNR vs Capacity')
legend('SNR vs Capacity(dB)');
grid on;