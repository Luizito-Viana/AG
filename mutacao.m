function individuo = mutacao(individuo,nmin,nmax)
  npop = length(individuo);
  for i = 1:npop
    if rand() < 1/npop
      individuo(i) = nmin + (nmax-nmin)*rand();
    end
  end
end