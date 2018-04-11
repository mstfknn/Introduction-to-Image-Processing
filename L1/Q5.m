T=imread(‘fractured_spine.tif’);
A=im2double(T);
B=A/255;
C=B.^0,3;
D=C*255;
imagesc(D);