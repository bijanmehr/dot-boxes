function y = expert_trainer(state)
    y = findtri_exp(state);
    if y == 0
        y = findnon_exp(state);
        if y == 0
            y = findone_exp(state);
            if y == 0
               y = finddue_exp(state);
                if y == 0
                   disp("no move remain!"); 
                end
            end
        end
    end
end