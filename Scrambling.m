clc;
clear all;
k=input('Enter the last two digit of ID No: ');
b=dec2bin(k,16);
fprintf('Binary Number of those digit 16 bit long: ');
m = sprintf('%s',b)-'0';
fprintf('%d ',m);