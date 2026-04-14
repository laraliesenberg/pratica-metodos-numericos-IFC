function [G, R] = decomposicao_GR(A)

  [n, m] = size(A);
  G = gram_schmidt_colunas(A);

  R = zeros(m, m);

  for i = 1:m
    for j = i:m
      R(i,j) = dot(G(:,i), A(:,j)) / dot(G(:,i), G(:,i));  %dot() -> produto escalar
    end
  end
