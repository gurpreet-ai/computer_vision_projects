%% Read in two images 
imgl = imread('pic410.bmp');
imgr = imread('pic430.bmp');

%% display image pair side by side
[ROWS COLS CHANNELS] = size(imgl);
disimg = [imgl imgr];

image(disimg);

%% 8-point Linear Algorithm
% Given a number of corresponding points, we could
% use the epipolar constraints to try to recover camera
% pose (R, T). 

% The relationship between the a point in image 1 and a point in image 2 is

% I1: image 1
% I2: image 2

% I1 * Fundamental_Matrix * I2' = 0

% xi1, yi1: coords of point in image 1
% xi2, yi2: coords of point in image 2

% [xi2 yi2 1]  *  [f11 f12 f13]     [xi1]
%                 [f21 f22 f23]  *  [yi1]   =  0
%                 [f31 f32 f33]     [ 1 ]


