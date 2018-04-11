I = imread('chalks.jpg');
figure
color gray
imshow(I);
H1 = fspecial('prewitt');
H2 = fspecial('sobel');
H3 = fspecial('disk',10);
H4 = fspecial('motion',20,45);
Output = imfilter(I,H4,'replicate');
figure
color gray
imshow(Output);