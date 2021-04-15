% Calculate the a^b mod n
function ans = pown(a,b,g)	
    a=mod(a,g);
    k=-1;
    
    % Store the digits in the loop
    digits = [a];
    
    % Repeat multiplication by a until digits begin to loop
    while not(k == a)
        k=mod(digits(end)*a,g);
        digits=[digits,k];
    end
    
    % Remove last digit as it is the same as the first
    digits(end)=[];
    
    % Return the results of the calculation
    ans = digits( mod(b-1,length(digits))+1 );
end
