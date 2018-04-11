I = imread('race.tif');
figure
colormap gray
imagesc(I)
title('Original Image')
base_filter=[0 0 0 0 0;1 1 1 1 1;0 0 0 0 0;-1 -1 -1 -1 -1;0 0 0 0 0]; 
angle=0; 
filter1=imrotate(base_filter, angle, 'crop'); 
filter2=imrotate(base_filter, angle, 'loose');
OutputQ5 = imfilter(I, filter1);
figure
colormap gray
imagesc(OutputQ5)
title('Imfilter Image')
