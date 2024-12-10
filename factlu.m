function [A] = factlu(A)
    [n, m] = size(A);
    if n ~= m
        error('A doit être une matrice carrée');
    end
    
    
    for p = 1:n
        for j = p:n
            A(p, j) = A(p, j) - sum(A(p, 1:p-1) .* A(1:p-1, j).');
        end
        
       
        for i = p+1:n
            A(i, p) = (A(i, p) - sum(A(i, 1:p-1) .* A(1:p-1, p).')) / A(p, p);
        end
    end
end