function P = inicia_populacao(nalelo, npop, nmin, nmax)
  P = nmin + (nmax - nmin) * rand(npop, nalelo);
end