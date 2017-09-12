function [P,fP] = reducao(P, F, fP, fF)
  npop = length(fP);
  for i = 1:npop
    if melhor([fP(i), fF(i)]) == 2
      P(i,:) = F(i,:);
      fP(i) = fF(i);
    end
  end
end