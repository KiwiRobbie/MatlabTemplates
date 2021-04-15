% Function for y
function y_ = fy(x,y)
    y_ = y + (min(x+40,y/20))/100;
end