function [u_uniforme, u_localisees] = resoudre_poutre(l, n, alpha)
    h = l / (n + 1);  
    
    A = remplissage(n);

    % (a) Charge équirépartie
    b_uniforme = -1 / n * ones(n, 1) * alpha * h^5;
    u_uniforme = resollu(A, b_uniforme);

    % (b) Charges localisées
    charges_localisees = zeros(n, n);  
    u_localisees = zeros(n, n);      
    for i = 1:n
        charges_localisees(i, i) = -1 * alpha * h^5;  
        u_localisees(:, i) = resollu(A, charges_localisees(:, i));
    end
end