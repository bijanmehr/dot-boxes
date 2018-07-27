function [r,c]=QLplayer(Lines)
load('Q.mat','Q')
Lines(1:2:13,7) = 2;
Lines(Lines==-1)=1;
[row,col]=find(Lines==1);
state=zeros(1,84);
for j=1:size(row,1)
   state(btrns(row(j),col(j)))=1; 
end
index = state == 1;
QQ = Q;
QQ(index) = [];
M = max(QQ);
ind = find(Q == M);
I = ind(1,1);
[r,c]=ftrns(I);
end