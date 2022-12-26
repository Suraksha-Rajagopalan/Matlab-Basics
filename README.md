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


## Types of time signals

- Continuous time signals x(t): defined at every point in time
- Discrete time signals x[n]: defined only at a discrete set of values of time (integer)


<div align = center>
<img src = "https://user-images.githubusercontent.com/91787553/209511350-9b28756b-bd0e-4d3f-972b-07b611511f71.png">
</div>


## Properties of systems:

### Periodicity- 

the signal’s behavior/graph repeats after every T. Therefore,
   $$x(t)=x(t+nT)\ or\ x(t)=x(t-nT)$$  
here T is the fundamental period
So we can say signal remains unchanged when shifted by multiples of T.

### Even and Odd- 
an even signal is symmetric about the Y-axis.
x(t)=x(-t) even
x(t)=-x(-t) odd
A signal can be broken into it’s even and odd parts to make certain conversions easy.

![image](https://user-images.githubusercontent.com/91787553/209510419-6908bf57-90dc-4239-90d9-4a763d09227a.png)

### Linearity-

*(i) Additivity/Superposition-*
if x1(t) -> y1(t)
and x2(t) -> y2(t)

![image](https://user-images.githubusercontent.com/91787553/209510689-daf0b0dd-46be-42eb-bc52-f196b25c7594.png)

*(ii) Property of scaling-*
if x1(t) -> y1(t)
then

![image](https://user-images.githubusercontent.com/91787553/209510733-443d99e7-7ecc-4911-880f-f8ef07cb371e.png)

If both are satisfied, the system is linear.

### Time invariant- 
Any delay provided in the input must be reflected in the output for a time invariant system.

![image](https://user-images.githubusercontent.com/91787553/209510818-87e90c5d-1a0d-487e-ab41-ea2842b323e1.png)

here x2(t) is a delayed input.
We check if putting a delayed input through the system is the same as a delay in the output signal.

### LTI systems- 
A linear time invariant system. A system that is linear and time-invariant.

### BIBO stability- 
The bounded input bounded output stability.
We say a system is BIBO stable if-

![image](https://user-images.githubusercontent.com/91787553/209510910-bede39f2-df66-48b2-bd69-0d9bfd47f63d.png)

### Causality- 
Causal signals are signals that are zero for all negative time.
If any value of the output signal depends on a future value of the input signal then the signal is non-causal.

### Memoryless system-
A causal system is memoryless if for any time t, the value of the output at time t depends only on the value of the input at time t.

Suppose that y(t)=kx(t)where k is a fixed real number. At any time t1

y (t1)=k x(t1)
And thus y (t1) depends only on the values of the input at time t1 Hence the system is memoryless.

### System Invertibility-
Invertibility in the system comes from a basic mathematical phenomenon called “inverse”. If input signal can be retrieved from output signal then we say that particular system is invertible.

<div align = center>
<img src = "https://user-images.githubusercontent.com/91787553/209511459-1aed67e0-e0e5-476c-b61a-c25e2256d9dc.png">
</div>

## Convolution- 
A convolution is an integral that expresses the amount of overlap of one function g as it is shifted over another function f. It therefore "blends" one function with another.

![image](https://user-images.githubusercontent.com/91787553/209512190-3bf879fe-0982-494f-8986-54059afe85f0.png)



