% Example of summing an array using a for loop and a motivation for using
% functions to REUSE code.

% given an array of numbers, sum all the numbers.
v = [1 3 2 4 6];
% initialization is needed when the operation requires multiple lines of
% code, and later steps depend on a valid value of the variable itself.
s = 0;
s = v(1);
s = s + v(2);
s = s + v(3);

% In Matlab, there are row vectors and column vectors. You can distinguish
% these by using the general size() function.

% ' operator is the same as transpose()
vcol = v';

% length() returns the largest dimension of the given matrix. This can be
% used to get the number of elements in either a row or column vector
% without checking which is which.
disp("Comparing the lengths of row vector and column vector: ")
disp(length(v)==length(v'))

% Now we write a general way for summing using a for loop.
s = 0;
% a for loop iterates over a sequence of things:
% This is a typical loop over indices, named as 'i' here
for i = 1: length(v)
    s = s + v(i);
end

% Now we want to sum a different array w.
% We can just copy and paste.
w = ones(1, 10);
s2 = 0;
for i = 1: length(w)
    s2 = s2 + w(i);
end

% But when the operation is complicated, copying and pasting quickly makes
% your code unreasonably lengthy. In addition, if you discover in the
% future a mistake in this operation, you need to change every one of the
% copies you have.
% So the advisable way is to abstract/package the operation into a
% FUNCTION.
disp('Comparing s with the function output: ')
disp(s == mysum(v));
disp('Comparing s2 with the function output: ')
disp(s2 == mysum(w));




