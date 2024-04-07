clear
clc

% *** 1 - RGB Image ***
I = imread("nuclear_medicine_image.png");

% *** 3- Display Individual Channels ***
R_Ch = I(:,:,1);
G_Ch = I(:,:,2);
B_Ch = I(:,:,3);
R_Ch_gs = im2gray(R_Ch);
G_Ch_gs = im2gray(G_Ch);
B_Ch_gs = im2gray(B_Ch);
figure
montage({R_Ch_gs,G_Ch_gs,B_Ch_gs})