clc; clear; close all;
tic;
%% train
itr = 1;

EdgeNum = 84;
alpha = 0.2;
gamma = 0.8;
m = 7;
n = 7;

while itr ~= 100000
%% parameters

I =0;
z = 1;
l = 1;  


%% iteration
state = zeros(1,EdgeNum);

k = 1;
while k ~= 43


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
state(1,I)=1;
q = (1-alpha)*q + alpha*(R + gamma*M);
Q(I) = q;
trainer = expert_trainer(state);
trainer_choice(1,k) = trainer;
state(trainer)=1;
save('Q.mat','Q')
k=k+1;
end
itr = itr +1
end
toc;