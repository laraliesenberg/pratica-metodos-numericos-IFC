%A = criar_matriz(2, 2);
%A.dados = [1 2; 3 4];

%disp(A.dados);

%A = [1 2; 3 4]
%B = [5 6; 7 8]

%C = multiplicar_matrizes(A, B)

%gauss_sem_pivo([2 1 2; 4 3 2; 2 1 1])

%gauss_jordan([2 1 2; 4 3 2; 2 1 1])

%cholesky([4 2; 2 3])

%U = [1 2 3];
%V = [3 2 1];
%proj_escalar(U, V);

%U = [3 4]
%V = [1 0]
%proj_vetorial(U,V)

%U = [2 2]
%V =[1 1]
%complemento_ortogonal(U,V)

%V = [1 0 0 0 0; 1 1 0 0 0; 1 1 1 0 0]
%gram_schmidt_linhas(V)

%A = [1 1;1 2];
%[G, R] = decomposicao_GR(A);

%disp("G = ")
%disp(G)

%disp("R = ")
%disp(R)

%disp("G * R = ")
%disp(G * R)

A = [1 1;
     1 2];

[Q, R] = decomposicao_QR(A);

disp("Q = ")
disp(Q)

disp("R = ")
disp(R)

disp("Q * R = ")
disp(Q * R)
