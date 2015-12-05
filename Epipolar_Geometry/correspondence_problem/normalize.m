function [newpts, Translation] = normalize(pts)

% Input: pts, format is [(x1, y1, 1), (x2, y2, 1) ...]

newpts = 0;
Translation = zeros(3);

% Step 1: Find the mean value of the x and y coordinates of the entire 
% group of points.


