function U = gram_schmidt_linhas(V)

  [n,m] = size(V)

  if rank(V) < n
    error("Os vetores não são linearmente independentes");
  end

  U = zeros(n,m)

  for i = 1:n                %Percorre cada vetor(linhas)
    U(i,:) = V(i,:)          %ui = vi

    for j = 1:i-1            %Percorre todos os vetores anteriores já ortogonalizados
      proj = proj_vetorial(U(i,:), U(j,:))   %Proj_v de uk(vk)

      U(i,:) = U(i,:) - proj;                %Remove essa projeção -> deixa o vetor ortogonal aos anteriores
    endfor
  endfor
end
