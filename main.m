clear all;
close all;
clc;
training_data=[0 0.4 0 0 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0.5;
    0 0.5 0 0 1 1 0 0 0 1 1 0 0 1 0 0 1 0 1 0 1 0 1 0 0 0 1 0.45;
    0 0.1 0 1 0 0 0 0 1 0.95 0 1 0 1 0.4 0.4 0 1 0 1 0 0 1 0 0 1 0 0.2;
    0 0.43 0 1 0 0 0 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 0 1 0 0.25;
    0 0.21 0 1 0 0 0 0 1 1 0 1 0 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0.2;
    0 0.083 0 1 0 0 0 0 1 1 0 0.8 0 1 0.86 0 1 0.5 1 0 0 0 1 0 0 1 0 0.24;
    0 0.33 0 1 0 0 0 0 1 0.9 0 1 0 1 0 0.5 0.9 0.27 1 0 0.032 0 1 0 0 1 0 0.54;
    0.95 0.13 0 1 0 0 0 0 1 0.91 0 1 0 0.98 1 1 0 1 0 0.96 0 0 1 0 0 1 0 0.35;
    0 0.08 0 1 0 0 0 0.066 1 1 0 1 0 1 0.243 0.7 1 0 0 0 1 0 1 0 0 1 0 0.4;
    0 0.41 0 1 0 0 0 0 1 1 0 1 0 1 0 0.61 1 1 0.5 0 0 0 0.95 0 0 0.92 0 0.33;
    0 0.52 0 1 0 0 0 0 1 1 0 1 0 0.91 1 0 1 0.5 0 1 1 0 0.89 0 0 1 0 0.21;
    0 0.58 0 1 0 0 0 0 1 1 0 0.95 0 1 0 0.43 0.4 0 0.35 0 0.9 0 1 0 0 1 0 0.4;
    0 0.23 0 1 0 0 0 0 1 0 0 1 1 1 0 0 0.441 0 1 1 0 0 0 0 0.98 1 0 0.5;
    0 0.68 0 1 0 0 0 0 1 0 0.0363 1 0.99 0 0.9 1 0 0.85 0 1 0 1 0 0 1 1 0 0.1;
    0 0.31 0 1 0 0 0 0 0.898 0 0 1 0.85 0 0 0 0 1 0.2 1 0 0.5 0 0 1 1 0.21 0.15;
    0 0.76 0 0 1 1 0 0 0 0 1 0 0 0 1 0 0.515 0 0 0.9 0 0 0.858 0.02 0.04 0 0.88 0.12;
    0 0.31 0 0 1 1 0 0 0 0 0.89 0 0.88 0 0.66 1 0.79 0 0 0.78 0.023 0 1 0 0.1 0 0 0.54;
    1 0.211 0 1 0 0 0 0 1 0 0 1 1 1 1 0 1 0.2 1 0 1 1 0 0 1 0 1 0.67;
    0.8 0.02 0 1 0 0 0 0 1 0 0 1 0 0.91 0.5 1 1 0 1 1 0 1 0 0 1 1 0 0.2;
    0.8 0 0 1 0 0 0 0 1 0 0 0.965 0 0.87 0.11 1 0 0.95 0 1 0 1 0 0 1 1 0 0.3;
    0.675 0 0 1 0 0 0 0 1 0 0 1 0 0.92 0.5 0.19 1 0.21 0 0.2 0 0.95 0 0.1 1 1 0 0.47;
    0 0.48 0 0 1 1 0 0 0 1 0.88 0 0 1 0 0.17 1 0 1 0.11 1 0.032 1 0 0 1 0 0.31;
    0 0 0.88 0 1 1 0 0 0 1 1 0 0 1 1 0.9 1 1 0 0 1 0 1 0 0.21 0 1 0.3;
    0 0 1 0 1 1 0 1 0 0.89 1 0 0 1 0 0.3 0.78 0.95 1 0 1 0 1 0 0.0033 0 1 0;
    0 0.45 0 0 1 0 0 0 0 1 0.99 0 1 0 1 0 0.35 1 0.033 0 0 0.91 1 0 0.2 0 1 0.21;
    0 0.16 0 0 1 0 0 0 0 0 0.88 0.96 1 0 1 0 0.032 1 0 1 0 1 1 0 0 0 1 0.3;
    0 0.28 0 1 0 0 0 0 1 0 0 1 0 1 0.8 1 0 1 0 1 0 0 0 0 1 1 0 0.21;
    0 0.25 0 1 0 0 0 0 1 0 0 1 0 1 1 0 0 0 0 1 0 0.75 0 0 1 1 0 0.5;
    0 0 0.01 0 1 1 0 0 0 1 1 0 0 0 0 1 0 0 0 1 1 0 1 0 0 1 0 0.4;
    0 0 0.28 0 1 1 0 0 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0.13;
    0 0 0.17 0 1 1 0 0 0 1 1 0 0 0.85 0 0 1 1 0 0 1 0 1 1 0 0 1 0.36;
    ];
training_label={'Redfox','Afghanfox','EagleOw1','BrownfishOw1','LongearedOw1','SakerFalcon','LannerFalcon','PeregrineFalcon','OspreyEagle','BootedEagle','BonelliEagle','SpottedEagle','RedbreastedGoose','GreylagGoose','WithefrontedGoose', 'SantherbertDog','PointerDog','WoodPigeon','StockDove','RockDove','CollaredDove','Wolf','Tiger','lion','MarbledCat','ChinchilaCat','MallardDuck','PanitalDuck','BlackBear','GrizliBear','PandaBear'};
[num_data,dim]=size(training_data);
for i=1:num_data
    training_data(i,:)=training_data(i,:)/sqrt(sum(training_data(i,:).*training_data(i,:)));
end
%normalizing training data

center_vector=zeros(1,dim);
for i=1:dim
    center_vector(i)=[sum(training_data(:,i))/dim];
end
weight_temp=rand(dim,400)/20;
[dim,num_neuron]=size(weight_temp);
weight=zeros(dim,num_neuron);
for i=1:num_neuron
    weight(:,i)=center_vector'+weight_temp(:,i);
end
for i=1:num_neuron
    weight(:,i)=weight(:,i)/sqrt(sum(weight(:,i).*weight(:,i)));
end
%initializing weight
%the approach is finding the center vector of training data
%then add small random real number on it.

alpha=0.6;
count=1;
r=zeros(1,500);
plot_index=zeros(1,num_data);
while count<35
    for i=1:num_data
        index=nearest_weight(training_data(i,:),weight);
        [x,y]=index_search(index);
        [r,weight]=neighbor_search_update(training_data(i,:),weight,x,y,r,count,alpha);
        plot_index(i)=index;
    end
    count=count+1;
    alpha=alpha/2;
end
figure_out(num_data,plot_index,training_label);

%while loop below is for hexagon topological. If wanna see this topological structure
%Ctrl+t to remove comment
%And comment the loop for rectangle above before executing

% while count<35
%     for i=1:num_data
%         index=nearest_weight(training_data(i,:),weight);
%         [x,y]=index_search(index);
%         [r,weight]=hexagon_topo(training_data(i,:),weight,x,y,r,count,alpha);
%         plot_index(i)=index;
%     end
%     count=count+1;
%     alpha=alpha/2;
% end
% figure_hexagon(num_data,plot_index,training_label);

testing_data=[0 0.71 0 1 0 0 0 0 1 1 0 1 0 0.87 1 0 1 1 0 0 0.03 0 1 0 0 1 0 0.13;
    0 0.083 0 1 0 0 0 0 1 0 0 0.95 0 1 0 1 0 0 1 1 0 0 0 0 1 1 0 0.24;
    0.818 0.8 0 0 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 0 1 0 1 0 0 0 1 0.7;
    ];
testing_label={'Golden Eagle','WigeonDuck','BlackearCat'};
for i=1:3
    testing_data(i,:)=testing_data(i,:)/sqrt(sum(testing_data(i,:).*testing_data(i,:)));
end
for i=1:3
    index=nearest_weight(testing_data(i,:),weight);
    [x,y]=index_search(index);
    figure_out(num_data,index,testing_label(i));
    % figure_hexagon(num_data,index,testing_label(i));
end
%testing procedure
