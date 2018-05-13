function figure_hexagon(num_data,plot_index,label)
%figure the training and testing data on hexagon topological structure
if strcmp((cell2mat(label(1))),'Golden Eagle')
    [x_end,y_end]=index_search(plot_index);
    [x_end_new,y_end_new]=mapping(x_end,y_end);
    text(x_end_new+0.3,y_end_new+0.3,label,'Color','g');
    text(x_end_new,y_end_new,'O','Color','g');
    hold on;
elseif strcmp((cell2mat(label(1))),'WigeonDuck')
    [x_end,y_end]=index_search(plot_index);
    [x_end_new,y_end_new]=mapping(x_end,y_end);
    text(x_end_new+0.3,y_end_new+0.3,label,'Color','g');
    text(x_end_new,y_end_new,'O','Color','g');
    hold on;
elseif strcmp((cell2mat(label(1))),'BlackearCat')
    [x_end,y_end]=index_search(plot_index);
    [x_end_new,y_end_new]=mapping(x_end,y_end);
    text(x_end_new+0.3,y_end_new+0.3,label,'Color','g');
    text(x_end_new,y_end_new,'O','Color','g');
    hold on;
else
    figure(1);
    pos = hextop([21 21]);
    plotsom(pos);
    for i=1:num_data
        [x_end(i),y_end(i)]=index_search(plot_index(i));
        axis([0,21,0,21]);
        [x_end_new(i),y_end_new(i)]=mapping(x_end(i),y_end(i));
        text(x_end_new(i),y_end_new(i),'X','Color','b');
        if ~isempty(find(plot_index(i)==plot_index(1:(i-1))))
            if length(find(plot_index(i)==plot_index(1:(i-1))))==1
                text(x_end_new(i)-0.3,y_end_new(i)-0.3,label(i),'Color','b');
            elseif length(find(plot_index(i)==plot_index(1:(i-1))))==2
                text(x_end_new(i)+0.3,y_end_new(i)-0.3,label(i),'Color','b');
            elseif length(find(plot_index(i)==plot_index(1:(i-1))))==3
                text(x_end_new(i)-0.3,y_end_new(i)+0.3,label(i),'Color','b');
            end
        else
            text(x_end_new(i)+0.3,y_end_new(i)+0.3,label(i),'Color','b');
        end
        hold on;
    end
    % pause(0.2);
    % clf;
end