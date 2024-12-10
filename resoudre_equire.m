function [u_uniforme] = resoudre_equire(A, l, n)
    b_uniforme = (-1/n) * ones(n, 1);
    u_uniforme = A \ b_uniforme;
end
