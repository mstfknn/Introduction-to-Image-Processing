I = imread('race.tif');
figure
colormap gray
imagesc(I);
title('Original Image')
filter = ones(7,7)/(7*7);
O = imfilter(I, filter);
figure
colormap gray
imagesc(O)
title('Radius 7 Image')
