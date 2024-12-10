function tracer_flexion(l, n, u_uniforme, u_localisees)
   
    h = l / (n + 1);

    x_points = h * (1:n);

  
    figure;
    hold on;


    plot(x_points, u_uniforme, '-o', 'DisplayName', 'Charge équirépartie');
    
 
    for i = 1:n 
        plot(x_points, u_localisees(:, i), '--', 'DisplayName', ['Charge localisée en point ' num2str(i)]);
    end
    hold off;


    title('Flexion de la poutre pour différents cas de charge');
    xlabel('Position le long de la poutre (x)');
    ylabel('Flexion (u)');
    legend('Location', 'best');
    grid on;    
end
