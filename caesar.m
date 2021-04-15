% Shifts letter by a, b is not used
function ans = caesar(msg,a,b)
    ans=mod(msg+a,26);
end