function C = multiplicar_matrizes(A, B)
  [m, n] = size(A);
  [p, q] = size(B);

  if n ~= p
    error('Dimensões incompatíveis para multiplicação')
  endif

  C = zeros(m, q)

  for i = 1:m
    for j = 1:q
      soma = 0;

      for k = 1:n
        soma = soma + A(i,k) * B(k,j);
      endfor

      C(i,j) = soma;
    endfor
  endfor

