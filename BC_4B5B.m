clc;
clear all;
%4bit binary data input table
data=[0 0 0 0; 0 0 0 1; 0 0 1 0; 0 0 1 1; 0 1 0 0; 0 1 0 1; 0 1 1 0; 0 1 1 1;
1 0 0 0; 1 0 0 1; 1 0 1 0; 1 0 1 1; 1 1 0 0; 1 1 0 1; 1 1 1 0; 1 1 1 1;];

%5bit binary data output table
code=[1 1 1 1 0; 0 1 0 0 1; 1 0 1 0 0; 1 0 1 0 1; 0 1 0 1 0; 0 1 0 1 1; 0 1 1 1 0; 0 1 1 1 1;
1 0 0 1 0; 1 0 0 1 1; 1 0 1 1 0; 1 0 1 1 1; 1 1 0 1 0; 1 1 0 1 1; 1 1 1 0 0; 1 1 1 0 1;];

%taking bit stream input
inp = input('Enter 4s multiple bits with [] arround them: \n');

%dividing the bit stream into 4 bit blocks
inpt=reshape(inp, 4,[]);
inptx = transpose(inpt);

%finding the 5 bit code for each 4 bit data
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