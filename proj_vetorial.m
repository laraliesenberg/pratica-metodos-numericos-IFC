function pv = proj_vetorial(u,v)

  %produto escalar u * v
  prod_uv = 0
  for i = 1:length(u)
    prod_uv = prod_uv + u(i) * v(i);
  end

  %produto escalar v * v
  prod_vv = 0
  for i = 1:length(v)
    prod_vv = prod_vv + v(i) * v(i);
  endfor

  if prod_vv < 0
    error('Não é permitido divisão por 0')
  endif

  divisao = prod_uv / prod_vv;

  pv = divisao * v;
end
