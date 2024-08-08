function s = mysum(v)
% Functions have this general form:
% function OUTPUT = FUNCTION_NAME(ARGUMENT1, ARGUMENT2, ...)

% Arguments are pieces of information the function needs to perform the
% desired operation.
%
% Each function has its own 'scope', which is the space for variables of
% the function. This is isolated from the space of variables from the
% script in which the function is called ('invoked'). We need to communicate the
% information using the arguments when calling the function as input and
% the result of the function as output.

s = 0;
for i = 1: length(v)
    s = s + v(i);
end