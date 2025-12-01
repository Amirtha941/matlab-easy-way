
## 📘 **Day 2 – Vectors in MATLAB**

### 🔹 1. What is a Vector?

A **vector** is a one-dimensional array that can hold a series of numbers.  
It can be a **row vector** or a **column vector**.

```
% Row vector a = [1  2  3  4  5]; 
% Column vector b = [1; 2; 3; 4; 5];
``` 

----------

### 🔹 2. Creating Vectors

#### ➤ Using the colon operator:

```
v = 1:5; % [1 2 3 4 5] v = 1:2:9; % [1 3 5 7 9] (start:step:end)
``` 

#### ➤ Using `linspace`:

```
v = linspace(0,10,5); % [0 2.5 5 7.5 10]
``` 
`linspace(a, b, n)` means:  
➡ Create **`n` equally spaced numbers** between **`a` (start)** and **`b` (end)**.

It’s often used for plotting or smooth intervals.

### 🔹 Example 1:

`v = linspace(0, 10, 5);` 

👉 Output: `[0 2.5 5 7.5 10]`  
→ Starts at 0, ends at 10, contains **5 values equally spaced**.

### 🔹 Example 2:

`v = linspace(1, 5, 9);` 

👉 Output: `[1 1.5 2 2.5 3 3.5 4 4.5 5]`  
→ 9 values between 1 and 5.

So basically:

-   **Colon operator (`:`)** → good for fixed steps (e.g. 1:2:10).
    
-   **`linspace`** → good for fixed number of points (e.g. for smooth graphs).
----------

### 🔹 3. Vector Operations
|        Operation       |   Example  |       Description       |
|:----------------------:|:----------:|:-----------------------:|
| Addition / Subtraction | a+b, a-b   | Element-wise            |
| Scalar multiplication  | 3*a        | Multiplies each element |
| Element-wise multiply  | a.*b       | Dot multiply            |
| Dot product            | dot(a,b)   | Scalar result           |
| Cross product          | cross(a,b) | Vector (3D only)        |

### 🔹 4. Accessing Elements

```
a = [10  20  30  40  50];
a(1) % First element a(end) % Last element a(2:4) % Elements 2 to 4
``` 

----------

### 🔹 5. Common Functions

|    Function    |         Description         |
|:--------------:|:---------------------------:|
| length(v)      | Number of elements          |
| sum(v)         | Adds all elements           |
| mean(v)        | Average value               |
| max(v), min(v) | Largest/smallest element    |
| sort(v)        | Sorts vector                |
| norm(v)        | Magnitude of vector         |
| dot(a,b)       | Dot product                 |
| cross(a,b)     | Cross product (only for 3D) |

### 🔹 6. Logical and Relational Operations

```
v = [1  2  3  4  5];
v > 3  % [0 0 0 1 1]  find(v>3) % [4 5]
``` 

----------

### 🔹 7. Concatenation

```
a = [1  2  3];
b = [4  5  6];
c = [a b]; % [1 2 3 4 5 6]
``` 

----------

### 🔹 8. Vector Visualization

```
x = 0:0.1:2*pi;
y = sin(x); plot(x, y, 'r--o'); % red dashed line with circles title('Sine Wave');
xlabel('x values');
ylabel('sin(x)');
```