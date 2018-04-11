T=imread('C:\Users\imp\Downloads\Ctskull-256.tif'); 
imagesc(T)
colormap(gray);imagesc(T)
numberOfBits = 1; 
maxValue = 2^numberOfBits - 1; 
A=T*(maxValue/255); 
colormap(gray);imagesc(A) 