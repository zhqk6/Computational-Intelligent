function [r,weight]=neighbor_search_update(training_data,weight,x,y,r,count,alpha)
%seaching for the neighbors of BMU and updating BMU and its neighbors for rectangle structure
r0=8;
lamda=30;
r(count)=r0*exp(-count/lamda);
distance=zeros(20,20);
for i=1:20
    for j=1:20
        distance(i,j)=sqrt((x-i)^2+(y-j)^2);
        if distance~=0
            if distance(i,j)<=r(count)
                weight(:,(i-1)*20+j)=weight(:,(i-1)*20+j)-alpha*exp(-(distance(i,j)^2)/2*r(count)^2)*(weight(:,(i-1)*20+j)-training_data');
            end
        else
            weight(:,(i-1)*20+j)=weight(:,(i-1)*20+j)-alpha*exp(-(distance(i,j)^2)/2*r(count)^2)*(weight(:,(i-1)*20+j)-training_data');
        end
    end
end
