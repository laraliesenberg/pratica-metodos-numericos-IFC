function w = complemento_ortogonal(u,v)
  proj_v = proj_vetorial(u,v);

  w = u - proj_v;
end
