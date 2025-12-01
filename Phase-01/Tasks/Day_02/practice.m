%% Day 2 - Vectors in MATLAB
% Author: Amirtha
% Description: Vectors, properties, functions, and practice problems
% -----------------------------------------------------------

clc; clear;
disp("=== DAY 2: VECTORS IN MATLAB ===");

%% Example of linspace
disp("Example of linspace:");
v = linspace(0, 10, 5);
disp(v);
% linspace(start, end, n) creates n equally spaced points from start to end.

% -----------------------------------------------------------
% PRACTICE TASKS
% -----------------------------------------------------------

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

disp("=== END OF DAY 2 TASKS ===");
