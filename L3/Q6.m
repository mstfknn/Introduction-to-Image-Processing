I = imread('race.tif');
figure
colormap gray
imagesc(I)
title('Original Image')
base_filter=[0 0 0 0 0;1 1 1 1 1;0 0 0 0 0;-1 -1 -1 -1 -1;0 0 0 0 0]; 
angle=45; 
filter1=imrotate(base_filter, angle, 'loose');
OutputQ5 = imfilter(I, filter1);
figure
colormap gray
imagesc(OutputQ5)
title('Angle 45 Image')
angle=90;
filter2=imrotate(base_filter, angle, 'loose');
OutputQ5 = imfilter(I, filter2);
figure
colormap gray
imagesc(OutputQ5)
title('Angle 90 Image')
angle=135; 
filter3=imrotate(base_filter, angle, 'loose');
OutputQ5 = imfilter(I, filter3);
figure
colormap gray
imagesc(OutputQ5)
title('Angle 135 Image')