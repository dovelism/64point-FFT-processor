function [X0, X1] = point2radix2(x0,x1)
%计算2点的DFT
%   此处显示详细说明
X0 = x0 + x1;
X1 = x0 - x1;
end

