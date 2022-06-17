%Power vs Capacity;
B = 51;
N0 = 1;
P = [0:10^4];
C = B.*log2(1+P./(N0*B));
plot(P,C,'r')
xlabel('Power(P)');
ylabel('Capacity(C) bit/sec');  
title('Power vs Capacity')
legend('Power vs Capacity');
grid on;