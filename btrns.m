function y=btrns(r,c)
btrns = zeros(13,7);
btrns(1,1:6) = 1:6;
btrns(2,1:7) = 7:13;
btrns(3,1:6) = 14:19;
btrns(4,1:7) = 20:26;
btrns(5,1:6) = 27:32;
btrns(6,1:7) = 33:39;
btrns(7,1:6) = 40:45;
btrns(8,1:7) = 46:52;
btrns(9,1:6) = 53:58;
btrns(10,1:7) = 59:65;
btrns(11,1:6) = 66:71;
btrns(12,1:7) = 72:78;
btrns(13,1:6) = 79:84;
y = btrns(r,c);
end