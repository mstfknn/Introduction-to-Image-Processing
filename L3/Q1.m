im1 = imread('kids.tif');
im2 = imread('race.tif');
M = zeros(256,1,'uint8'); 
hist1 = imhist(im1); 
hist2 = imhist(im2);
cdf1 = cumsum(hist1) / numel(im1); 
cdf2 = cumsum(hist2) / numel(im2);

for idx = 1 : 256
    [~,ind] = min(abs(cdf1(idx) - cdf2));
    M(idx) = ind-1;
end

out = M(double(im1)+1);
figure
colormap gray
imagesc(out)
