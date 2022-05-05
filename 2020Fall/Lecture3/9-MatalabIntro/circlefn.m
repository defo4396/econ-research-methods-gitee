function [x, y] = circlefn(r)
%CIRCLEFN - Function to draw a circle of radius r
%File based on Rudra Pratap
%Call Syntax: [x, y] = circlefn(r) or circlefn(r)
%Input:  r = specified radius
%Output: [x, y] = the x- and y-coordinates of data


theta = linspace(0, 2*pi, 100);
x = r*cos(theta);
y = r*sin(theta);
%figure
plot(x,y,'LineWidth', 2);
axis('equal'); 
title(['Circle of radius r = ', num2str(r)])

end

