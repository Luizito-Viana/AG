function F = fitness(individuo)
  x = individuo(:,1);
  y = individuo(:,2);
  F = sin(x).*cos(y);

end