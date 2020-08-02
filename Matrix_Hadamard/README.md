# HADAMARD MATRIX SCILAB

Just copy and add the next function in your Scilab editor:

```matlab
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
```

# Examples of Hadamard Matrix

### Input & Output 1
```matlab
H = hadamard(1);

H  =
    1. 
```

### Input & Output 2
```matlab
H = hadamard(2);

H  =
    1.    1.  
    1.  - 1.  
```

### Input & Output 3
```matlab
H = hadamard(4);

H  =
    1.    1.    1.    1.  
    1.  - 1.    1.  - 1.  
    1.    1.  - 1.  - 1.  
    1.  - 1.  - 1.    1.  
```

### Common Error
```matlab
H = hadamard(5);

Hadamard Error: n must be a power of 2
at line       4 of function hadamard called by :  
H = hadamard(5);
```
