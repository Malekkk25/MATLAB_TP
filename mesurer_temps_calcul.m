function mesurer_temps_calcul(A,l, n)
    tic;   
    u_localisees_pos_3 = resoudre_local(A,l, n, 3);    
    time_3 = toc;
    disp('Temps de calcul pour n = 3 :');
    disp(time_3);

    tic;   
    u_localisees_pos_4 = resoudre_local(A,l, n, 4);    
    time_4 = toc;
    disp('Temps de calcul pour n = 4 :');
    disp(time_4);

    tic;   
    u_localisees_pos_5 = resoudre_local(A,l, n, 5);    
    time_5 = toc;
    disp('Temps de calcul pour n = 5 :');
    disp(time_5);
end
