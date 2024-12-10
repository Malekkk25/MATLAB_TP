function x = remontee(A, b)
    % REMONTEE Résout un système triangulaire supérieur Ax = b
    
    % Vérifier la compatibilité de A et b
    [n, m] = size(A);
    if n ~= m
        error('A doit être une matrice carrée');
    end
    
    if n ~= length(b)
        error('A et b doivent avoir des dimensions compatibles');
    end
    
    if size(b, 2) ~= 1
        error('b doit être un vecteur colonne');
    end
    
    x = zeros(n, 1);
    x(n) = b(n) / A(n, n);
    
    
    for i = n-1:-1:1
        somme_termes = 0;
        for j = i+1:n
            somme_termes = somme_termes + A(i, j) * x(j);
        end
        x(i) = (b(i) - somme_termes) / A(i, i);
    end
end