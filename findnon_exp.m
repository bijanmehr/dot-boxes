function y = findnon_exp(state)
m = 7;
h = [1 2 3 4 5 6;14 15 16 17 18 19;27 28 29 30 31 32;40 41 42 43 44 45;53 54 55 56 57 58;66 67 68 69 70 71;79 80 81 82 83 84];

y=0;
for idx=1:84
    if state(idx) == 0
        if ismember(idx,h) == 1
            while ismember(idx,[1 2 3 4 5 6]) == 0
                if state(idx-m)+state(idx-m+1)+state(idx-2*m+1)==0
                    y = idx;
                end
                break
            end
            while ismember(idx,[79 80 81 82 83 84]) == 0
                if state(idx+m)+state(idx+m-1)+state(idx+2*m-1)==0
                    y = idx;
                end
                break
            end
        else
            while ismember(idx,[13 26 39 52 65 78]) == 0
                if state(idx+1)+state(idx-m+1)+state(idx+m)==0
                    y = idx;
                end
                break
            end
            while ismember(idx,[7 20 33 46 59 72]) == 0
                if state(idx-1)+state(idx+m-1)+state(idx-m)==0
                    y = idx;
                end
                break
            end
        end
    end
end
end