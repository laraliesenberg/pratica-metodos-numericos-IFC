function [Q, R] = decomposicao_QR(A)

  [n, m] = size(A);

  Q = zeros(n, m);         %vetores ortonormais
  R = zeros(m, m);         %matriz triangular

  for k = 1:m              %percorre cada coluna (vetor)

    v = A(:,k);

    %Gram-schmidt
    for j = 1:k-1

      R(j,k) = dot(v, Q(:,j));

      %remove a projeção
      v = v - R(j,k) * Q(:,j);

    endfor

    %normalização
    R(k,k) = norm(v);

    Q(:,k) = v / R(k,k);

  endfor

end
