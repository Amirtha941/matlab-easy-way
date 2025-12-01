%% ============================================================
%  DAY 2 - VECTORS IN MATLAB
%  Author: Amirtha
%  Description: Covers vector basics, properties, functions, and advanced concepts
% ============================================================

clc; clear;
disp("=== DAY 1: VECTORS IN MATLAB ===");

%% ------------------------------------------------------------
% Example of linspace (core concept)
% ------------------------------------------------------------
disp("Example of linspace:");
v = linspace(0, 10, 5);
disp(v);
% linspace(start, end, n) creates n equally spaced points from start to end.

%% ------------------------------------------------------------
% PRACTICE TASKS (10 BASIC VECTOR QUESTIONS)
% ------------------------------------------------------------
disp("=== PRACTICE TASKS ===");

%% 1. Create a vector v from 2 to 20 with a step of 2
v = 2:2:20;
disp("1. Vector v = "); disp(v);

%% 2. Find the sum, mean, and length of vector v
v_sum = sum(v);
v_mean = mean(v);
v_len = length(v);
fprintf("2. Sum = %d, Mean = %.2f, Length = %d\n", v_sum, v_mean, v_len);

%% 3. Create two vectors a and b and find their dot and cross products
a = [1 2 3];
b = [4 5 6];
dot_ab = dot(a, b);
cross_ab = cross(a, b);
disp("3. Dot product = "); disp(dot_ab);
disp("   Cross product = "); disp(cross_ab);

%% 4. Generate a linearly spaced vector between 0 and 1 with 10 elements
lin_vec = linspace(0, 1, 10);
disp("4. Linearly spaced vector = "); disp(lin_vec);

%% 5. Find all elements greater than 5 from [1 4 7 9 2 8]
nums = [1 4 7 9 2 8];
greater_than_5 = nums(nums > 5);
disp("5. Elements greater than 5 = "); disp(greater_than_5);

%% 6. Sort [3 8 1 9 2 6] in descending order
arr = [3 8 1 9 2 6];
sorted_desc = sort(arr, 'descend');
disp("6. Sorted in descending order = "); disp(sorted_desc);

%% 7. Plot y = x^2 for x from -10 to 10
x = -10:1:10;
y = x.^2;
figure;
plot(x, y, 'b-o');
title('7. y = x^2');
xlabel('x');
ylabel('y');
grid on;

%% 8. Find the norm (magnitude) of [3 4]
vec = [3 4];
mag = norm(vec);
disp("8. Magnitude of [3 4] = "); disp(mag);

%% 9. Combine two vectors [1 3 5] and [2 4 6]
a = [1 3 5];
b = [2 4 6];
combined = [a b];
disp("9. Combined vector = "); disp(combined);

%% 10. Try max, min, and sum on random vector
r = [12 45 3 9 27];
max_r = max(r);
min_r = min(r);
sum_r = sum(r);
fprintf("10. max = %d, min = %d, sum = %d\n", max_r, min_r, sum_r);

disp("=== END OF BASIC TASKS ===");

%% ------------------------------------------------------------
% ADVANCED VECTOR CONCEPTS
% ------------------------------------------------------------
disp(" ");
disp("=== ADVANCED VECTOR CONCEPTS ===");

%% A. logspace - logarithmically spaced vector
log_v = logspace(1, 3, 5);  % from 10^1 to 10^3
disp("A. logspace(1,3,5) = "); disp(log_v);

%% B. Vector indexing tricks
v = [10 20 30 40 50 60];
disp("B1. Every 2nd element: "); disp(v(2:2:end));
disp("B2. Elements > 25: "); disp(v(v > 25));
v(v > 40) = 0;  % replace >40 with 0
disp("B3. After replacement (>40 -> 0): "); disp(v);

%% C. Statistical & mathematical functions
v = [2 4 6 8 10];
disp("C. mean, median, std, var, prod");
disp([mean(v) median(v) std(v) var(v) prod(v)]);

%% D. Cumulative operations
v = [1 2 3 4 5];
disp("D1. diff(v) = "); disp(diff(v));
disp("D2. cumsum(v) = "); disp(cumsum(v));
disp("D3. cumprod(v) = "); disp(cumprod(v));

%% E. Logical operations
v = [5 10 15 20];
disp("E1. find(v > 10) = "); disp(find(v > 10));
disp("E2. any(v > 18) = "); disp(any(v > 18));
disp("E3. all(v > 3) = "); disp(all(v > 3));

%% F. Reshape and flip
v = 1:6;
reshaped = reshape(v, [2, 3]);
disp("F1. reshape(v,[2,3]) = "); disp(reshaped);
disp("F2. fliplr(v) = "); disp(fliplr(v));
disp("F3. flipud(v') = "); disp(flipud(v'));

%% G. Unique, sort, and reverse
arr = [4 2 4 3 1 2];
disp("G1. unique(arr) = "); disp(unique(arr));
disp("G2. sort(arr,'descend') = "); disp(sort(arr,'descend'));

%% H. Vectorized computation (no loops)
x = 1:5;
y = x.^2 + 3*x + 2;
disp("H. y = x.^2 + 3x + 2 = "); disp(y);

%% I. Angle between two vectors
a = [1 2 3];
b = [4 5 6];
theta = acosd(dot(a,b)/(norm(a)*norm(b)));
disp("I. Angle between vectors (degrees) = "); disp(theta);

%% J. Random vectors
rand_uniform = rand(1,5);
rand_int = randi([1 100], 1, 5);
rand_normal = randn(1,5);
disp("J1. rand(1,5) = "); disp(rand_uniform);
disp("J2. randi([1,100],1,5) = "); disp(rand_int);
disp("J3. randn(1,5) = "); disp(rand_normal);

%% K. Vector visualization
x = 0:0.1:2*pi;
y = sin(x);
figure;
subplot(2,1,1);
plot(x,y,'r');
title('K1. Sine Function');

subplot(2,1,2);
stem(x(1:10), y(1:10));
title('K2. Stem Plot of First 10 Values');

%% L. Quiver (vector direction visualization)
u = [2 1];
v = [1 3];
figure;
quiver(0, 0, u(1), v(1), 'LineWidth', 2);
axis equal;
title('L. Vector Plot Example (quiver)');

%% M. Derivative using gradient
x = 0:0.1:10;
y = sin(x);
dy = gradient(y, x);
figure;
plot(x, dy, 'm', 'LineWidth', 1.5);
title('M. Derivative of sin(x) using gradient');
xlabel('x');
ylabel('dy/dx');
grid on;

disp("=== END OF ADVANCED VECTOR SECTION ===");
