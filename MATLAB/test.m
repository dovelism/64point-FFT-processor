comp = rand(64, 2);
for m=1:64
    comp(m,1) = 2*comp(m,1)-1;
    comp(m,2) = 2*comp(m,2)-1;
end
Xk1 = point64radix4(comp);
Xk = roundn(Xk1, -4);
xn = comp(:,1)+comp(:,2)*1i;
Xk2 = fft(xn);
Re = real(Xk2);
Im = imag(Xk2);
a = roundn(Re, -4);
b = roundn(Im, -4);
if isequal(Xk(:,1), a) && isequal(Xk(:,2), b)
    disp('right!');
else
    disp('wrong!');
end