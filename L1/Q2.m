I=imread('C:/Users/imp/Downloads/Rose1024.tif');
I512=I(1:2:end,1:2:end);
figure;
colormap gray;
imagesc(I);
figure;
colormap gray;
imagesc(512);
I256=I(1:4:end,1:4:end)
figure;
colormap gray;
  imshow(I256);
for i=1:5
     t=2^i;
Itemp=I(1:t:end,1:t:end)
figure;
colormap gray;
imshow(Itemp);
txt=sprintf('dxd',1024/t,1024/t);
title(txt)
clear Itemp
end
