% Default short format
format short
disp("short format:"); disp(pi)

% Long format
format long
disp("long format:"); disp(pi)

% Short scientific (exponential)
format shortE
disp("shortE format:"); disp(pi)

% Long scientific
format longE
disp("longE format:"); disp(pi)

% General short (auto switch between fixed/scientific)
format shortG
disp("shortG format:"); disp(pi)

% General long
format longG
disp("longG format:"); disp(pi)

% Bank format (2 decimals)
format bank
disp("bank format:"); disp(pi)

% Rational approximation
format rat
disp("rat format:"); disp(pi)

% Hexadecimal IEEE representation
format hex
disp("hex format:"); disp(pi)

% Engineering notation (short and long)
format shortEng
disp("shortEng format:"); disp(pi)
format longEng
disp("longEng format:"); disp(pi)

% Sign-only format
format +
disp("sign-only format:");
disp([-5 0 5])

% Reset back to default
format short
