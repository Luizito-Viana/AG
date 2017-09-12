function id = melhor(vetor)
  tipo = 'max'; % ou 'min'
  if tipo == 'max'
    [~,id] = sort(vetor,'descend');
   else
    [~,id] = sort(vetor,'ascend');
   end
   id = id(1);
end