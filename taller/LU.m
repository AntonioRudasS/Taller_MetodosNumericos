function [L U]=LU(a)
[n,m]= size(a);
L=eye(n);
for i=1:m
    for j=i+1:n
        L(j,i)=a(j,i)/a(i,i);
        for k=i+1:m
            a(j,k)=a(j,k)-L(j,i)*a(i,k);
        end
    end
end
L;
U=triu(a);

