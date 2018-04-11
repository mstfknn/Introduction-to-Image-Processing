clear all
I = imread('kids.tif');
imagesc(I);
colormap gray
filter = ones(5,5)/(5*5);
O = imfilter(I, filter);
figure
colormap gray
imagesc(O)
