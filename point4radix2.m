function [X0, X1, X2, X3] = point4radix2(x0, x1, x2, x3)
%计算4点的FFT，基为2
%   此处显示详细说明
%x10 = [0,0];
%x11 = [0,0];
%x20 = [0,0];
x21 = [0,0];
x10 = x0 + x2;      
x11 = x1 + x3;
x20 = x0 - x2;
x21(1) = x1(2) - x3(2);
x21(2) = x3(1) - x1(1);
[X0, X2] = point2radix2(x10, x11);
[X1, X3] = point2radix2(x20, x21);
end

