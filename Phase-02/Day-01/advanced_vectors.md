
## Vectorized Computations (Fast Operations)

MATLAB is built for **vectorization** — you don’t need loops!

```
x = 1:5;
y = x.^2 + 3*x + 2; % operates on all elements
``` 

✅ Faster than using a `for` loop.  
✅ Works element-wise because of `.^`, `.*`, `./` etc.

----------

## Angle Between Two Vectors

You can find the **angle** θ between vectors `a` and `b` using:

```
a = [1  2  3];
b = [4  5  6];
theta = acosd(dot(a,b)/(norm(a)*norm(b))); disp(theta);
``` 

----------

## Random Vectors

|        Function        |             Description             |        Example       |
|:----------------------:|:-----------------------------------:|:--------------------:|
| rand(1,n)              | Uniform random numbers between 0–1  | rand(1,5)            |
| randi([min max], 1, n) | Random integers                     | randi([1 100], 1, 5) |
| randn(1,n)             | Normally distributed random numbers | randn(1,5)           |



##  Vector Visualization

-   **Line plot:** `plot(x, y)`
    
-   **Stem plot (discrete values):** `stem(x)`
    
-   **Bar graph:** `bar(x)`
    
-   **Quiver (for vector direction):**
    
    `u = [1  2];
    v = [3  1];
    quiver(0,0,u,v);
    axis equal;
    title('Vector Plot');` 
    

----------

## Special Functions for Engineering / Signals

|    Function   |                  Description                 |
|:-------------:|:--------------------------------------------:|
| dot(a,b)      | Dot product                                  |
| cross(a,b)    | Cross product (3D)                           |
| conv(a,b)     | Convolution                                  |
| corr(a,b)     | Correlation                                  |
| trapz(x,y)    | Numerical integration using trapezoidal rule |
| gradient(y,x) | Numerical derivative                         |


Example:

```
x = 0:0.1:10;
y = sin(x);
dy = gradient(y, x); plot(x, dy); title('Derivative of sin(x)');
``` 

----------


## **Overview**

This folder contains my Day 1 MATLAB work on **Vectors**, implemented as part of the learning tasks.  
All concepts and tasks were completed in the file:

**`vectors.m`**

The code covers both:

-   **Basic vector concepts and the 10 required practice tasks**, and
    
-   **Advanced vector operations and functions** related to indexing, statistics, reshaping, cumulative operations, vectorized computation, random vectors, and visualization.
    

The implementation follows the concepts referenced from:  
**(Insert your reference link here)**

----------

## **What I Implemented**

### **1. Basic Vector Tasks**

I implemented all the 10 required exercises:

1.  Vector creation using step sizes
    
2.  Sum, mean, length
    
3.  Dot & cross products
    
4.  `linspace` vector generation
    
5.  Logical indexing
    
6.  Sorting in descending order
    
7.  Plotting y=x2y = x^2y=x2
    
8.  Magnitude of a vector
    
9.  Vector concatenation
    
10.  Max, min, sum of a random vector
    

###  **2. Advanced Vector Concepts**

The file also includes additional exploration of important vector operations:

-   `logspace`
    
-   Indexing patterns (`v(2:2:end)`, conditional updates, logical masks)
    
-   Statistical functions (`mean`, `median`, `std`, `var`, `prod`)
    
-   Cumulative functions (`diff`, `cumsum`, `cumprod`)
    
-   Logical checks (`find`, `any`, `all`)
    
-   Reshaping and flipping (`reshape`, `fliplr`, `flipud`)
    
-   Unique and sorted outputs
    
-   Fully vectorized mathematical expressions
    
-   Angle between vectors using dot product + norm
    
-   Random vector generation (`rand`, `randi`, `randn`)
    
-   Visualization: `plot`, `stem`, `quiver`
    
-   Numerical differentiation using `gradient`
    

All sections are separated and documented clearly inside the `.m` file.

----------

## **How to Use**

1.  Open MATLAB.
    
2.  Run the script:
    
    `Vectors.m` 
    
3.  Check the Command Window for all printed outputs.
    
4.  Several figures will open demonstrating:
    
    -   Quadratic plot
        
    -   Sine function
        
    -   Stem plot
        
    -   Vector direction (quiver)
        
    -   Numerical derivative
        

----------

## **Outputs**


**➡Basic vector tasks output**  
![output_1](../Outputs/output_1.png)


**➡ y = x^2 graph** 

![output_1](../Outputs/output_8.png)

**➡ Advanced vector operations output**  

![output_1](../Outputs/output_2.png)

![output_1](../Outputs/output_3.png)

![output_1](../Outputs/output_4.png)

**➡ Sine graph / Stem plot**  
![output_1](../Outputs/output_5.png)

**➡ Quiver plot**  
![output_1](../Outputs/output_6.png)

**➡  Derivative output**  
![output_1](../Outputs/output_7.png)

