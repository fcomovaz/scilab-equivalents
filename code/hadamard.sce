function H = hadamard(n)
    if( ~n | ~( log2(n) == int(log2(n)) ) ) then
        msg = gettext("%s: n must be a power of 2\n");
        error(msprintf(msg, "Hadamard Error"));
    end
    if(n == 1) then
        H = n;
    else
        H = hadamard(n*0.5).*.[1 1; 1 -1];
    end
endfunction