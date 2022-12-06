function x=SustitucionProgresiva(a, b)
[n, n]=size(a);
a = [a, b];
x = zeros(n, 1);
x(1)=a(1, n+1)/a(1, 1);

for i=2:n
	s=0;
	for j=1:n-1
		s=s+a(i, j)*x(j);
	end
	x(i)=(a(i, n+1)-s)/a(i, i);
end

x
