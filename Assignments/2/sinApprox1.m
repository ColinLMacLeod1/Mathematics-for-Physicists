function [ val ] = sinApprox1( x,n )
% sinApprox1 is the series approximation of f(x) for Question 1 of
% Assignment 2
val = 0;
for i=1:n
    val = val + ((0.5)^i).*sin(i.*x);
end
end

