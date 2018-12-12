function [x] = compmul(a, b)
%针对复数a和b的乘法
%   此处显示详细说明
x(1) = a(1)*b(1) - a(2)*b(2);
x(2) = a(1)*b(2) + a(2)*b(1);
end

