clc;
clear all;
%3bit binary data input table
data=[0 0 0 ; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1;];
%5bit binary data output table
code=[1 1 0 0 0; 1 0 0 0 1; 1 1 0 1 0; 0 1 0 1 0; 1 0 1 0 0; 0 1 1 0 1; 0 1 1 1 1;
0 0 1 1 0; 1 0 1 1 1;];

%taking bit stream input
inp = input('Enter data bits: \n');

%dividing the bit stream into 3 bit blocks
inpt=reshape(inp,3,[]);
inptx = transpose(inpt);

%finding the 5 bit code for each 3 bit data
for m=1:size(inptx,1)
    RowIdx= find(ismember(data,[inptx(m,:)], 'rows'));
    out= code(RowIdx, 1:5);
        if m==1
           outm= out;
        end
        if m>1
           outm = [outm;out];
        end
end
[r,c]=size(outm);
fprintf('\nThe code for the given bit stream is: ');
for p=1:r
    if p==1
       outs=outm;
    end
    if p>1
       outs=[outs(1,:) outm(p,:)];
    end
end
fprintf(' %1.0f', outs);
m = outs;
n = length(m);
x = [];
y = [];
for i=1:n
    x=[x i-1 i-1+0.5 i-1+0.5 i];
    if(m(i)==0)
        y=[y -1 -1 0 0];
    else
        y=[y 1 1 0 0];
    end
end
plot(x,y,'linewidth',2),axis([0,n,-2,2]);
title('Bipolar RZ for 3B/5B');
xlabel('Time');
ylabel('Amplitude');
grid on;