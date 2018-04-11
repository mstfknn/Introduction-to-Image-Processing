f = imread('97.jpg');
f = rgb2gray(f);
h = butter(3,0.6,'high');
PQ = paddedsize(size(f));
F = fft2(double(f), PQ(1), PQ(2));
H = fft2(double(h), PQ(1), PQ(2));
F_fH = H.*F;
ffi = ifft2(F_fH);
ffi = real(ffi(2:size(f,1)+1, 2:size(f,2)+1));
f = double(f);
figure, imshow(f + ffi,[]);