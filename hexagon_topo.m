function [r,weight]=hexagon_topo(training_data,weight,x,y,r,count,alpha)
%seaching for the neighbors of BMU and updating BMU and its neighbors for
%hexagon topological structure
r0=8;
lamda=30;
r(count)=r0*exp(-count/lamda);
distance=zeros(20,20);
[x_new,y_new]=mapping(x,y);
for i=1:20
    for j=1:20
        [i_new,j_new]=mapping(i,j);
        distance(i,j)=sqrt((x_new-i_new)^2+(y_new-j_new)^2);
        if distance~=0
            if distance(i,j)<=r(count)
                weight(:,(i-1)*20+j)=weight(:,(i-1)*20+j)-alpha*exp(-(distance(i,j)^2)/2*r(count)^2)*(weight(:,(i-1)*20+j)-training_data');
            end
        else
            weight(:,(i-1)*20+j)=weight(:,(i-1)*20+j)-alpha*exp(-(distance(i,j)^2)/2*r(count)^2)*(weight(:,(i-1)*20+j)-training_data');
        end
    end
end
