# CIRCULANT MATRIX SCILAB

Just copy and add the next function in your Scilab editor:

```matlab
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
```

# Examples of Circulant Matrix

### Input & Output 1
```matlab
array = [2 3 5 7 11];
C = circulant(array, 1);

C  =
    2.     3.     5.     7.     11.  
    11.    2.     3.     5.     7.   
    7.     11.    2.     3.     5.   
    5.     7.     11.    2.     3.   
    3.     5.     7.     11.    2. 
```

### Input & Output 2
```matlab
array = [2 3 5 7 11 13];
C = circulant(array,-1);

C  =
    2.     3.     5.     7.     11.    13.  
    3.     5.     7.     11.    13.    2.   
    5.     7.     11.    13.    2.     3.   
    7.     11.    13.    2.     3.     5.   
    11.    13.    2.     3.     5.     7.   
    13.    2.     3.     5.     7.     11.  
```

### Input & Output 3
```matlab
array = [2; 3; 5; 7; 11];
C = circulant(array);

C  =
    2.     11.    7.     5.     3.   
    3.     2.     11.    7.     5.   
    5.     3.     2.     11.    7.   
    7.     5.     3.     2.     11.  
    11.    7.     5.     3.     2. 
```

### Common Error
```matlab
array = [2 3 4 5 6];
C = circulant(array, 5);

Circulant Error: shift must be 1 or -1
at line       5 of function circulant called by :  
C = circulant(array, 5);
```
