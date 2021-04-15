% Might handle some of the ciphers that could be in the test, will ignore
% non letter characters
function enc = cipher(msg,a,b,cipher_func)
    msg=upper(msg);
    for i = 1:length(msg)
        chr=msg(i);
        if isletter(chr)==1
            chr = chr-'A'
            chr=cipher_func(chr,a,b);
            msg(i)= chr+'A'
        end
    end
    enc=msg;
end