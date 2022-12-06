function GaussSeidel(A, b, x, tol, m)
n=leght(x);
for k = 1:m
         w = x;
         for i = 1:n
             s = A(i,1:i-1)*x(1:i-1) + A(i,i+1:n)*x(i+1:n);
             x(i) = (bp(i) - s)/A(i,i);
         end
         
         if norm(x-w,inf)<tol
              return
         end
         
         fprintf('\n Solucion: %4.0f\n', k)
         for i = 1:n
             fprintf('             x(%1.0f)=%6.8f\n', i, x(i))       
         end
end

