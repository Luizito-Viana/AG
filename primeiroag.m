clc; clear all; close all;
P = inicia_populacao(2,25,3,6);
fP = fitness(P);
npop = 30;
maxger = 70;
PbXO = 0.9; PbMT = 0.05;
nmin = 3; nmax = 6;
g = 0;
while(g < maxger)
  for i = 1:2:npop
    idp1 = torneio(fP,3); idp2 = torneio(fP, 3);
    if rand < PbXO
      [f1,f2] = cruzamento(P(idp1,:),P(idp2,:),nmin,nmax);
    else
      f1 = P(idp1,:); f2 = P(idp2,:);
    end
    if rand() < PbMT, f1= mutacao(f1, nmin, nmax); end
    if rand() < PbMT, f2= mutacao(f2, nmin, nmax); end
    F(i,:) = f1; F(i+1,:) = f2;
  end
  fF = fitness(F);
  [P, fP] = reducao(P,F,fP,fF);
  disp(fP(melhor(fP)));
  g = g+1;
end
disp(P(melhor(fP),:));
disp(fP(melhor(fP)));
