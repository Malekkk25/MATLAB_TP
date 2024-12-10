% Méthode de factorisation LU

% (1) Descente test
A = [1 0 0 0 0;
     2 1 0 0 0;
     1 1 1 0 0;
    -1 3 -2 1 0;
    -2 2 -1 0 1];

b = [4; 10; 5; 0; -5];

x = descente(A, b);

disp('Solution vector x avec descente:');
for i = 1:length(x)
    fprintf('x%d = %.f\n', i, x(i));
end

% (2) Remontee test
A = [1 2 3 4 5;
     0 1 2 3 4;
     0 0 1 2 3;
     0 0 0 1 1;
     0 0 0 0 -1];
b = [4; 2; 1; 0; 0];

x = remontee(A, b);
disp('Solution vector x avec remontee:');
for i = 1:length(x)
    fprintf('x%d = %d\n', i, x(i));
end

% (3) Factlu test
A = [1  2  3  4  5;
     2  5  8 11 14;
     1  2  4  6  8;
    -1  1  1  2  2;
    -2 -2 -3 -4 -6];

A_facto = factlu(A);
disp(A_facto);
U = triu(A_facto);
L = tril(A_facto, -1) + eye(size(A, 1));

disp('L ='); disp(L);
disp('U ='); disp(U);

% (4) Resollu test
A = [1 2 3 4 5;
     2 5 8 11 14;
     1 2 4 6 8;
     1 1 1 2 2;
     2 2 3 4 6];

b = [4; 10; 5; 0; 5];

x = resollu(A, b);
disp('Solution x:');
disp(x);

% (5) Inverselu test
A = [
    1/2 0 -1/2 0;
    0 2 0 -1;
    -1/2 0 1 -1/2;
    0 -1 -1/2 3/2;
];

B = inverselu(A);

disp('Matrice inverse B :');
disp(B);

disp('A * B :');
disp(A * B);

%Application

%(1) Remplissage
A = remplissage(n);

% (2) Charge équirépartie
l = 10;
n = 9;

% (a) Charge équirépartie
u_uniforme = resoudre_equire(A,l, n);

% (b) Charges localisées
u_localisees = zeros(n, n);
for i = 1:n
    u_localisees(:, i) = resoudre_local(A,l, n, i);  
end

disp('Résultats pour charge équirépartie :');
disp(u_uniforme);

disp('Résultats pour charges localisées dans toutes les points:');
disp(u_localisees);

% (3) Tracage
tracer_flexion(l, n, u_uniforme, u_localisees);

% (4) Temps de calcul
mesurer_temps_calcul(A,l, n);

