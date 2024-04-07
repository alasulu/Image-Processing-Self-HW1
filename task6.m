function adj_image = task6(image,brightness,contrast)
I = imread(image);
Ig = im2gray(I);
adj_image = Ig + brightness;
adj_image2 = adj_image * contrast;
adj_image2(adj_image2 < 0) = 0;
adj_image2(adj_image2 > 255) = 255;
figure
montage({Ig,adj_image2})
end

%In order to run the code and see the effect, write the codes below respectively
% adj_image = task6('grayscale_brain.png', 1, 0.5) --- Low Contrast Image
% adj_image = task6('grayscale_brain.png', 1, 3) --- High Contrast Image
% adj_image = task6('grayscale_brain.png', 100, 1) --- Increased Brightness
% adj_image = task6('grayscale_brain.png', -100, 1) --- Decreased Brightness