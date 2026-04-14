function U = gauss_sem_pivo(A)
  U = A;
  [n, ~] = size(A);

  for k = 1:n-1    %k percorre as colunas
    for i = k+1:n  %pega as linhas abaixo da linha k
      m = U(i,k) / U(k,k);

      for j = k:n  %atualiza todos os elementos da linha
        U(i,j) = U(i,j) - m * U(k,j);
      endfor
    endfor
  endfor

