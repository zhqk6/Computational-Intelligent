function [x,y]=index_search(index)
%finding the topological location(x,y) of weight vector with index
%in this project best topological matrix is 20*20
x=ceil(index/20);
if x==0
   x=1;
end
y=rem(index,20)+1;
end