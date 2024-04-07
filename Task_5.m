clear
clc
I = imread("grayscale_brain.png");
Ig = im2gray(I);
Ihist = histeq(Ig);
imshowpair(I,Ihist,"montage")
title('Original and Histogram Equalized Image')