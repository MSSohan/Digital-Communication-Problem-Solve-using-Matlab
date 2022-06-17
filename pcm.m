%Convert Analog Signal to Digital Signal Using PCM
clc;
clear all;
A=10; fm=3; L=8;
n=log2(L);
k=input('Enter the last digit of ID No: ');
N=5*k;

%analog signal
t=0:1/(1000*fm):0.5;
x=A*cos(2*pi*fm*t);

figure(1)
plot(t,x)
title('Analog Signal')
ylabel('Amplitute')
xlabel('Time t(in sec)')
grid on

%---Sampling-----
ts=linspace(0,0.5,N);
xs=A*cos(2*pi*fm*ts);

figure(2)
plot(t,x,'linewidth',2)
title('Sampling')
ylabel('Amplitute')
xlabel('Time t(in sec)')
hold on
stem(ts,xs,'r','linewidth',2)
hold off
legend('Analog Signal','Sampled Signal');
grid on

%--Quantization---
x1=xs+A;
x1=x1/(2*A);
L=(-1+2^n);
x1=L*x1;
xq=round(x1);

figure(3)
stem(ts,x1,'linewidth',2)
title('Quantization')
ylabel('Levels L')
hold on
stem(ts,xq,'r','linewidth',2)
plot(ts,xq,'--r')
plot(t,(x+A)*L/(2*A),'--b')
grid on
hold off
legend('Sampled Signal','Quantized Signal');

%----Digital data----
fprintf('\n   Digital data \n');
for i=1:length(xq)
    d=dec2bin(xq(i),N);
    fprintf('      %s \n',d);
end
figure(4)
stairs(ts,xq,'linewidth',2);
title('Digital data')
axis([0 0.6,0 7]);
grid on;