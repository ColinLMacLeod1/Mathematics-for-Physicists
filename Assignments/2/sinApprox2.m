function [ val ] = sinApprox2( x,n )
% sinApprox1 is the series approximation of f(x) for Question 1 of
% Assignment 2
val = 0;
for i=1:n
    val = val + ((4*((-1)^i-1))/(pi*(i)^3)).*sin(i.*x);
end
end