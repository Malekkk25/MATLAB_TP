function [B] = inverselu(A)
    [n, m] = size(A);
    if n ~= m
        error('La matrice A doit être carrée.');
    end

    A_facto = factlu(A);
    disp(A_facto);
    U = triu(A_facto);
    L = tril(A_facto, -1) + eye(size(A, 1));

    
    I = eye(n);
    B = zeros(n);

   
    for i = 1:n
        y = descente(L, I(:, i));
        B(:, i) = remontee(U, y); 
    end
end
