function [x] = resollu(A, B)
    
    A_facto = factlu(A);
    %disp(A_facto);
    U = triu(A_facto);
    L = tril(A_facto, -1) + eye(size(A, 1));
    y = descente(L, B);
    x = remontee(U, y);
end