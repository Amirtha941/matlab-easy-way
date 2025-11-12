
# 🌟 **Extended Notes: Vector Concepts in MATLAB(Part 1)**

----------

## 🧩 1️⃣ Vector Creation – Advanced Ways

We already saw:

-   **Colon operator (`:`)**
    
-   **`linspace(start, end, n)`**
    

Here are a few **more useful ways**:

### 🔹 `logspace(a, b, n)`

Creates **logarithmically spaced** points between `10^a` and `10^b`.  
Useful in frequency plots, Bode plots, etc.

`v = logspace(1, 3, 5); % gives [10 31.6 100 316.2 1000]` 

----------

## 🧩 2️⃣ Indexing Tricks (Smart Access)

### 🔹 Negative / Skipping / Logical indexing

```
v = [10  20  30  40  50  60];

v(2:2:end) % every 2nd element → [20 40 60] v([1  3  5]) % pick specific indices → [10 30 50] v(v>25) % logical indexing → [30 40 50 60]
```

### 🔹 Changing values by condition

`v(v>40) = 0; % Replace elements greater than 40 with 0` 

----------

## 🧩 3️⃣ Useful Built-In Functions for Vectors

|  Function  |                 Meaning                 |           Example          |
|:----------:|:---------------------------------------:|:--------------------------:|
| sum(v)     | Sum of elements                         | sum([1 2 3]) → 6           |
| prod(v)    | Product of elements                     | prod([1 2 3]) → 6          |
| mean(v)    | Average                                 | mean([1 2 3]) → 2          |
| median(v)  | Middle value                            | median([1 3 5 7]) → 4      |
| std(v)     | Standard deviation                      | std([1 2 3])               |
| var(v)     | Variance                                | var([1 2 3])               |
| norm(v)    | Vector magnitude                        | norm([3 4]) → 5            |
| diff(v)    | Difference between consecutive elements | diff([1 3 6]) → [2 3]      |
| cumsum(v)  | Cumulative sum                          | cumsum([1 2 3]) → [1 3 6]  |
| cumprod(v) | Cumulative product                      | cumprod([1 2 3]) → [1 2 6] |


## 🧩 4️⃣ Relational & Logical Operations

You can compare elements or find conditions easily.

```
v = [5  10  15  20];

v > 10  % [0 0 1 1]  find(v > 10) % [3 4] any(v > 18) % true (1) all(v > 3) % true (1)
```

|     Function    |                 Meaning                 |
|:---------------:|:---------------------------------------:|
| find(condition) | Returns indices where condition is true |
| any(condition)  | True if any element satisfies it        |
| all(condition)  | True if all elements satisfy it         |

## 🧩 5️⃣ Combining & Reshaping

|      Operation     |              Description              |          Example          |
|:------------------:|:-------------------------------------:|:-------------------------:|
| [a b]              | Horizontal concatenation              | [1 2] + [3 4] → [1 2 3 4] |
| [a; b]             | Vertical concatenation                | [1 2]; [3 4] → 2×2 matrix |
| reshape(v, m, n)   | Change shape (if total elements same) | reshape(1:6, [2 3])       |
| fliplr(v)          | Flip left-right (row)                 | [1 2 3] → [3 2 1]         |
| flipud(v')         | Flip up-down (column)                 | [1;2;3] → [3;2;1]         |
| sort(v, 'descend') | Sort descending                       | [9 4 1] → [9 4 1]         |
| unique(v)          | Removes duplicates                    | [1 2 2 3] → [1 2 3]       |
