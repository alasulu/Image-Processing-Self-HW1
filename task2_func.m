function [R_Ch, G_Ch, B_Ch] = task2_func(image)
    NMImage = imread(image);
    R_Ch = NMImage(:,:,1);
    G_Ch = NMImage(:,:,2);
    B_Ch = NMImage(:,:,3);
    figure
    montage({R_Ch,B_Ch,G_Ch})
end

%In order to run the code, [R_Ch, G_Ch, B_Ch] = task2_func('nuclear_medicine_image.png') 