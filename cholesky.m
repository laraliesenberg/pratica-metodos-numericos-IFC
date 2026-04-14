function L = cholesky(A)
  [n, m] = size(A);

  if n ~= m
    error('A matriz deve ser quadrada');
  end

  L = zeros(n,n);     %Matriz triangular inferior

  for i = 1:n        %Percorre linhas
    for j = 1:i      %Percorre só a parte inferior

      soma = 0;

      for k = 1:j-1  %O índice k percorre os elementos já calculados de L que são usados para ajustar o valor atual
        soma = soma + L(i,k) * L(j,k);
      end

      if i == j                 %Caso diagonal
        valor = A(i,i) - soma;

        if valor <= 0
          error('Matriz não é positiva definida');
        end

        L(i,j) = sqrt(valor);
      else
        L(i,j) = (A(i,j) - soma) / L(j,j);  %Caso fora da diagonal
      end
    end
  end
end

