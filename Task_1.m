clear
clc
%https://www.researchgate.net/profile/Abdul-Salam-Shah/publication/312023421
%/figure/fig2/AS:445956740128769@1483335780088/A-Normal-MRI-B-MRI-with-Acute-
%Stroke-C-MRI-with-Alzheimer-Disease-D-MRI-with-Tumor_W640.jpg

% *** 1 - Image Reading ***
I = imread("grayscale_brain.png");
Ig = im2gray(I); % In order to ensure grayscaling as well

% *** 2 - Matrix Representation ***
[rows, columns, color_channels] = size(Ig);
disp(Ig)