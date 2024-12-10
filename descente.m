function x = descente(A, b)
    
    [n, m] = size(A);
    if n ~= m
        error('A doit etre une matrice carree');
    end
    
    if n ~= length(b)
        error('A et b doivent avoir des dimensions compatibles');
    end
    
    if size(b, 2) ~= 1
        error('b doit etre un vecteur colonne');
    end
    
    x = zeros(n, 1);
    
    x(1) = b(1) / A(1, 1);
    
    for i = 2:n
        
        somme = 0;
        for j = 1:i-1
            somme = somme + A(i, j) * x(j);
        end

        x(i) = (b(i) - somme) / A(i, i);
    end
end