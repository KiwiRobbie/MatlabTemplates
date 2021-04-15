% Function for x
function x_ = fx(x,y)
    x_ = x + 40 - min(x+40,y/20);
end
