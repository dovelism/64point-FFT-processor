function [X16] = point16radix4(x16)
%计算16点的FFT，输入x16是一组16个数的数组，输出X16也是一组16个数的整数
%   此处显示详细说明
[G00, G01, G02, G03] = point4radix2(x16(1,:), x16(5,:), x16(9,:), x16(13,:));
[G10, G11, G12, G13] = point4radix2(x16(2,:), x16(6,:), x16(10,:), x16(14,:));
[G20, G21, G22, G23] = point4radix2(x16(3,:), x16(7,:), x16(11,:), x16(15,:));
[G30, G31, G32, G33] = point4radix2(x16(4,:), x16(8,:), x16(12,:), x16(16,:));
%第一层FFT
%准备旋转因子
%W161 = [1, 0];
%W162 = [1, 0];
%W163 = [1, 0];
%W164 = [1, 0];
%W168 = [1, 0];
%W1612 = [1, 0];
W166 = [cos(pi/8), -sin(pi/8)];
W167 = [cos(pi/4), -sin(pi/4)];
W1610 = W167;
W1611 = [0, -1];
W168 = [sin(pi/8), -cos(pi/8)];
W1614 = W168;
W1612 = [-cos(pi/4), -sin(pi/4)];
W1615 = W1612;
W1616 = [-cos(pi/8), sin(pi/8)];
%旋转
G11 = compmul(G11, W166);
G12 = compmul(G12, W167);
G13 = compmul(G13, W168);
G21 = compmul(G21, W1610);
G22 = compmul(G22, W1611);
G23 = compmul(G23, W1612);
G31 = compmul(G31, W1614);
G32 = compmul(G32, W1615);
G33 = compmul(G33, W1616);
%第二层FFT
X16 = zeros(16,2);
[X16(1,:), X16(5,:), X16(9,:), X16(13,:)] = point4radix2(G00, G10, G20, G30);
[X16(2,:), X16(6,:), X16(10,:), X16(14,:)] = point4radix2(G01, G11, G21, G31);
[X16(3,:), X16(7,:), X16(11,:), X16(15,:)] = point4radix2(G02, G12, G22, G32);
[X16(4,:), X16(8,:), X16(12,:), X16(16,:)] = point4radix2(G03, G13, G23, G33);
end

