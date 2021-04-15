% Function to model a predator prey relationship given initial population
% and functions for x and y
function [xvals,yvals]=pred_prey(fx,fy,x0,y0,n)
    xvals=zeros(n,1);
    yvals=zeros(n,1);
    xvals(1)=x0;
    yvals(1)=y0;

    %Apply our difference equation rules n times.
    for i=1:n               
        xvals(i+1) = fx(xvals(i),yvals(i));
        yvals(i+1) = fy(xvals(i),yvals(i));
    end
end

% Function for x
function x_ = fx(x,y)
    x_ = x + 40 - min(x+40,y/20);
end

% Function for y
function y_ = fy(x,y)
    y_ = y + (min(x+40,y/20))/100;
end