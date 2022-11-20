<a href="https://in.mathworks.com/help/matlab/"><img src="https://img.shields.io/badge/Matlab-Documentation%20%F0%9F%94%97-purple" height="25" align="left"></a>
<br>
<div align="center">
<h1> Matlab Basics </h1>
</div>

MATLAB is an abbreviation for "matrix laboratory." While other programming languages mostly work with numbers one at a time, MATLAB® is designed to operate primarily on whole matrices and arrays.

All MATLAB variables are multidimensional arrays, no matter what type of data. A matrix is a two-dimensional array often used for linear algebra.

## __*Matrix and Arrays*__

 * To create an array with four elements in a single row, separate the elements with either a comma (,) or a space.

```matlab
a = [1 2 3 4]
```
This type of array is a row vector.

 * To create a matrix that has multiple rows, separate the rows with semicolons.

```matlab
a = [1 3 5; 2 4 6; 7 8 10]
```

 * Another way to create a matrix is to use a function, such as ones, zeros, or rand. For example, create a 5-by-1 column vector of zeros.

```matlab
z = zeros(5,1)
```

### *Operations on arrays or matrices*

- Addition and Subtraction:

```matlab
a = [10 6 8 9];
b = [11 2 14 7];
result = a+b
ans = a-b
```
Note that addition and subtraction are done element by element.

 - Multiplication:

```matlab
a = [1 2 3; 3 4 5; 6 7 8];
b = [12 45 9; 23 9 15; 9 10 38];
a*b
```

Note that for 2 matrices to be multiplied the number of rows of columns of first matrix should be equal to the number of rows of the second matrix.

 - Transpose:

```matlab
a'
```

 - Inverse of the matrix:

```matlab
inv(a)
```

 - Power and scalar multiplication:

```matlab
a.^3   %power element by element 
a.*4   %scalar multiplication
```

## Power of a signal :

Power is defined as the amount of energy consumed per unit time. This quantity is useful if the energy of the signal goes to infinity or the signal is “not-squarely-summable”. 

<img src = "https://user-images.githubusercontent.com/91787553/202886063-3f473e88-a4a2-4fb0-97bb-c773e46021fc.png" width = 250>

```matlab
function [p] = sigpower(n)
    b = n.*n;
    p = sum(b)/length(b);
end
```

## Energy of a signal :

A signal is said to be an energy signal if and only if its total energy E is finite, i.e., 0 < 𝐸 < ∞. For an energy signal, the average power P = 0. The nonperiodic signals are the examples of energy signals.

<img src = "https://user-images.githubusercontent.com/91787553/202886219-a9068a0d-1318-41e2-805f-a82756e74590.png" width = 200>

```matlab
function [s] = energy(n)
    n = n.*n;
    s = sum(n);
end
```


