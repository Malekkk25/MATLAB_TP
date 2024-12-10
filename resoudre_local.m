function [u_localisees] = resoudre_local(A,l, n, pos)
    
    charges_localisees = zeros(n, 1);
    b_localisees = zeros(n, 1); 
    b_localisees(pos) = -1;
    u_localisees = resollu(A, b_localisees);
end