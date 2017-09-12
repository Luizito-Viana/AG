function [f1,f2] = cruzamento(p1,p2,nmin,nmax)
  eta = 2;
  npop = length(p1);
  for i = 1:npop;
  f1 = p1; f2 = p2;
    if(rand) < 1/npop
      u = rand();
      if u < 0.5
        beta = (2*u)^(1/(eta+1));
      else 
        beta = (1/(2*u)^(1/(eta+1)));
      end
      f1(i) = 0.5*(1+beta)*p1(i) + 0.5*(1-beta)*p2(i);
      f2(i) = 0.5*(1-beta)*p1(i) + 0.5*(1+beta)*p2(i);
      if f1(i) < nmin, f1(i) = nmin; end
      if f1(i) > nmin, f1(i) = nmax; end
      if f1(i) < nmin, f1(i) = nmin; end
      if f1(i) > nmin, f1(i) = nmax; end
    end
  end
end
