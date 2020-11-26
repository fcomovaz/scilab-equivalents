# HILBERT MATRIX SCILAB

Just copy and add the next function in your Scilab editor:

```matlab
function H = hilb(n)
    H = 1 ./flipdim(toeplitz(n:(2*n-1),n:-1:1),2);
endfunction
```

# Examples of Hilbert Matrix

### Input & Output 1
```matlab
H = hilb(4);

H =
    1.          0.5         0.3333333   0.25     
    0.5         0.3333333   0.25        0.2      
    0.3333333   0.25        0.2         0.1666667
    0.25        0.2         0.1666667   0.1428571
```
```matlab
cond(H)

ans = 
    15513.739
```