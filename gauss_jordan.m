function R = gauss_jordan(A)
  U = gauss_sem_pivo(A)
  [n, ~] = size(A);

  for k = 1:n
    %Transforma pivô em 1
    U(k,:) = U(k,:) / U(k,k)   %U(k,:) pega a linha toda de k

    %Zera linhas acima do pivô
    for i = 1:k-1
      m = U(i,k)
      U(i,:) = U(i,:) - m * U(k,:)
    endfor
  endfor

  R = U;

