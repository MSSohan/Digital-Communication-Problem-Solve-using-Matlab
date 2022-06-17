clc;
clear all;
t = (0:0.1:10)';
x = sawtooth(t);
y = awgn(x,10,'measured');
plot(t,[x y])
legend('Original Signal','Signal with AWGN')