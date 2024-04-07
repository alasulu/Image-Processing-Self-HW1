function task1_func(image)
I = imread(image);
Ig = im2gray(I);
disp(Ig)
end

% In order to run the code write task1_func("grayscale_brain.png")