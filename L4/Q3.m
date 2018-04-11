image=imread('halftone.png');
PQ = size(image);
H1 = notch('btw', PQ(1), PQ(2), 10, 50, 100);
H2 = notch('btw', PQ(1), PQ(2), 10, 1, 400);
H3 = notch('btw', PQ(1), PQ(2), 10, 620, 100);
H4 = notch('btw', PQ(1), PQ(2), 10, 22, 414);
H5 = notch('btw', PQ(1), PQ(2), 10, 592, 414);
H6 = notch('btw', PQ(1), PQ(2), 10, 1, 114);
F=fft2(double(image),PQ(1),PQ(2));
FS = F.*H1.*H2.*H3.*H4.*H5.*H6;
F=real(ifft2(FS)); 
F=F(1:size(image,1), 1:size(image,2));
figure, imshow(F,[])
Fc=fftshift(F);
Fcf=fftshift(FS);
S1=log(1+abs(Fc)); 
S2=log(1+abs(Fcf));
figure, imshow(S1,[])
figure, imshow(S2,[])