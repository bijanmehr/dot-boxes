function [r,c]=ftrns(x)
ftrns = zeros(13,7);
ftrns(1,1:6) = 1:6;
ftrns(2,1:7) = 7:13;
ftrns(3,1:6) = 14:19;
ftrns(4,1:7) = 20:26;
ftrns(5,1:6) = 27:32;
ftrns(6,1:7) = 33:39;
ftrns(7,1:6) = 40:45;
ftrns(8,1:7) = 46:52;
ftrns(9,1:6) = 53:58;
ftrns(10,1:7) = 59:65;
ftrns(11,1:6) = 66:71;
ftrns(12,1:7) = 72:78;
ftrns(13,1:6) = 79:84;
[r,c] = find(ftrns==x);
end