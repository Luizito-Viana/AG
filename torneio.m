function vencedor = torneio (aptidoes,ntorn)
  npop = length(aptidoes);
  ids = randperm(npop);
  ids = ids(1:ntorn);
  vencedor = ids(melhor(aptidoes(ids)));
end