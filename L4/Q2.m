f = imread('97.jpg');
f = rgb2gray(f);
PQ = paddedsize(size(f));
F = fft2(double(f), PQ(1), PQ(2));
F2=fftshift(F);
figure,imshow(log(1+abs(F2)),[]);