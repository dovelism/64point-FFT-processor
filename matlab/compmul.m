function [x] = compmul(a, b)
%��Ը���a��b�ĳ˷�
%   �˴���ʾ��ϸ˵��
x(1) = a(1)*b(1) - a(2)*b(2);
x(2) = a(1)*b(2) + a(2)*b(1);
end

