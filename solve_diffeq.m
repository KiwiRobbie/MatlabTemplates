% Return the value of a difference equation after n steps
% Resultant array has size of n+1 as it includes x0
function x = solve_diffeq(diff_eq,x0,n)
    x=zeros(n,1);
    x(1)=x0;
    for n = 2:n+1
       x(n)=diff_eq(x(n-1));
    end
end