function [r,c]=ftrns(x)
trsn = zeros(13,7);
trsn(1,1:6) = 1:6;
trsn(2,1:7) = 7:13;
trsn(3,1:6) = 14:19;
trsn(4,1:7) = 20:26;
trsn(5,1:6) = 27:32;
trsn(6,1:7) = 33:39;
trsn(7,1:6) = 40:45;
trsn(8,1:7) = 46:52;
trsn(9,1:6) = 53:58;
trsn(10,1:7) = 59:65;
trsn(11,1:6) = 66:71;
trsn(12,1:7) = 72:78;
trsn(13,1:6) = 79:84;
[r,c] = find(trsn==x);
end