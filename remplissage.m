function A = remplissage(n)
    
    % diag  par des 6
    main_diag = 6 * ones(n, 1);
    
    % diag sous et sur par des -4
    sub_diag = -4 * ones(n-1, 1);
    
    % deuxieme diag sous et sur par des 1
    second_diag = ones(n-2, 1);
    A = diag(main_diag) + diag(sub_diag, -1) + diag(sub_diag, 1) + diag(second_diag, -2) + diag(second_diag, 2);
end