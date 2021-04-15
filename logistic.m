% Logistic map, configured for practice Q2, tieke population

function x_ = logistic(x)
    % Carrying capacity 
    k=500*2.2;
    
    % Growth rate
    lambda=2.2;
    
    x_=x+lambda*x*(1-x/k);
end