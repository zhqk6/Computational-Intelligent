function [x_new,y_new]=mapping(x,y)
% map a location from normal (x,y) to hexagon structure.
if (mod(y,2)==1)
    x_new=x+1/2;
else 
    x_new=x;
end
y_new=y*(sqrt(3)/2);
    