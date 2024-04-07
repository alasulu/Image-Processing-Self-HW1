I = imread('grayscale_brain.png');
Ig = im2gray(I);
%--------%
imshow(Ig) % Original Image
%--------%
histeq1 = histeq(Ig); % Default Parameter
histeq2 = adapthisteq(Ig); %Adaptive Parameter
histeq3 = adapthisteq(Ig,'NumTiles',[5 5]); % Tile Parameters with Custom Parameters
histeq4 = adapthisteq(Ig, 'Distribution', 'exponential'); %Custom Distrubiton Parameters
figure
montage({Ig,histeq1,histeq2,histeq3,histeq4})
%--------%
% Perform contrast adjustment with default parameters
def_img = imadjust(histeq1);
bleached_img = histeq1+100;
blacked_img = histeq1-100;
cont_img = imadjust(histeq1, [], [], 10);
decont_img = imadjust(histeq1, [], [], 0.8);
figure
montage({def_img,bleached_img,blacked_img,cont_img,decont_img})
bleached_img2 = histeq2+100;
blacked_img2 = histeq2-100;
cont_img2 = imadjust(histeq2, [], [], 5);
decont_img2 = imadjust(histeq2, [], [], 0.3);
figure
montage({def_img,bleached_img2,blacked_img2,cont_img2,decont_img2})
bleached_img3 = histeq3+100;
blacked_img3 = histeq3-100;
cont_img3 = imadjust(histeq3, [], [], 2);
decont_img3 = imadjust(histeq3, [], [], 0.5);
figure
montage({def_img,bleached_img3,blacked_img3,cont_img3,decont_img3})
bleached_img4 = histeq4+100;
blacked_img4 = histeq4-100;
cont_img4 = imadjust(histeq4, [], [], 6);
decont_img4 = imadjust(histeq4, [], [], 0.9);
figure
montage({def_img,bleached_img4,blacked_img4,cont_img4,decont_img4})