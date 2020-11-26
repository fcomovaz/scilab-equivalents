function H = hilb(n)
    H = 1 ./flipdim(toeplitz(n:(2*n-1),n:-1:1),2);
endfunction