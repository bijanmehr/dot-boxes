function y = choose_rnd(state)
index = state == 1;
range = 1:84;
range(index) = [];
y = 0;
if size(range,2)~= 0
    y = range(1,ceil(rand*size(range,2)));
end
end