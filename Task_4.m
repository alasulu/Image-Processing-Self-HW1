clear
clc
% Image Source
% https://www.rubomedical.com/dicom_files/

% *** Read & Display DICOM Image ***
info = dicominfo("MRBRAIN.DCM");
I = dicomread(info);
Ig = im2gray(I);
lim = stretchlim(Ig);
I_adj = imadjust(Ig,[0.02;0.04]);
I_hist = histeq(I_adj);
imshow(I_hist)
title('DICOM Image with Adjusted Black and White Values')

% *** 