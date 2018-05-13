function index=nearest_weight(training_data,weight)
%finding the index of the weight vector which is the nearest to input.
[~,b]=size(weight);
distance=zeros(1,b);
for i=1:b
distance(i)=pdist2(training_data,weight(:,i)','euclidean');
end
index=find(distance==min(distance));