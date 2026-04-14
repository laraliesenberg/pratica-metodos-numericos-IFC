function p = proj_escalar(u,v)

  %produto escalar
  prod = 0
  for i = 1:length(u)
    prod = prod + u(i) * v(i);
  end

  %norma
  norma = 0
  for i = 1:length(v)
    norma = norma + v(i)^2;
  end
  norma = sqrt(norma);

  if norma < 0
    error('Não é permitido divisão por 0')
  endif

  %projeção escalar
  p = prod / norma       %p = dot(u,v)/norm(v)

end
