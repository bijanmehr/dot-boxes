clc; clear; close all;
tic;
%% train

EdgeNum = 60;
alpha = 0.2;
gamma = 0.8;
m = 6;
n = 6;

%% parameters

I =0;
z = 1;
l = 1;



%% interface

hold on
for i=1:6
    for j = 1:6
       plot(i,j,'b*'); 
    end
end
hold off
axis equal;

%% iteration
state = zeros(1,EdgeNum);

k = 1;
while k ~= 31


if exist('Q.mat')
    load('Q.mat','Q')
else
    Q = zeros(1,EdgeNum);    
end
idx = choose_rnd(state);
    
q = Q(idx);
index = state == 1;
QQ = Q;
QQ(index) = [];
M = max(QQ);
ind = find(Q == M);
I = ind(1,1);

R = reward(I,state);
AIchoice(1,k) = I;
draw(I);
state(1,I)=1;
q = (1-alpha)*q + alpha*(R + gamma*M);
Q(I) = q;
disp(I);
trainer = input('your move! \n');
while state(trainer)==1
    trainer = input('choose another move! \n');
end
draw(trainer);
trainer_choice(1,k) = trainer;
state(trainer)=1;
save('Q.mat','Q')
k=k+1;
end
toc;