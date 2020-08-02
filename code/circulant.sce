function C = circulant(data, shift)
    //  If shift is wrong, the function stop
    if(exists("shift","local")) then
        if ( ~(shift == 1 | shift == -1) ) then
            error("Circulant Error: shift must be 1 or -1");
        end
    end
    
    //  string circulant no fixed yet
    if ( type(data) == 10 ) then
        error("This function is not ready for strings, yet.");
    end
    
    //   get data size
    [x y] = size(data);
    
    //  Assign data if it's a column
    if x == 1 then
        data = data';
        x = y;
    end
    
    //  set data size;
    C = zeros(x,x);
    
    // default value for shift
    if (~exists("shift","local")) then
        shift = 1;    
    end
    
    //  set the conversion matrix for default
    if shift == 1 then
        C = toeplitz([1 x:-1:2], 1:x);
    end
    
    //  set the conversion matrix for -1
    if shift == -1 then
        C = toeplitz([x:-1:1], [x 1:(x-1)]);
        C = flipdim(C,1);
    end
    
    //  evaluate conversion matrix
    for i=1:x
        C(i,:) = data(C(i,:),1);
    end
endfunction