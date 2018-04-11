  I=imread('C:\Users\mstfknn\Downloads\Lab4\linear.tif');
  imhist(I);
  figure;
  imagesc(I);
 
  Y=equalize(I)