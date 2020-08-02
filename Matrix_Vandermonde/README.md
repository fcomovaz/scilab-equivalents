# VANDERMONDE MATRIX SCILAB

Just copy and add the next function in your Scilab editor:

```matlab
function V = vander(data)
    n = length(data);
    V = zeros(n,n);
    for i=1:n
        V(:,i) = data(:).^(n-i);
    end
endfunction
```

# Examples of Vandermonde Matrix

### Input & Output 1
```matlab
array = [1 2 3 4 5];
V = vander(array);

V  =
    1.      1.      1.     1.    1.  
    16.     8.      4.     2.    1.  
    81.     27.     9.     3.    1.  
    256.    64.     16.    4.    1.  
    625.    125.    25.    5.    1.  
```

### Input & Output 2
```matlab
V = vander([1 2]);

V  =
    1.    1.  
    2.    1.  
```

### Common Error
```matlab
V = vander();

!--error 4 
Undefined variable: data
at line       2 of function vander called by :  
V = vander();
```
