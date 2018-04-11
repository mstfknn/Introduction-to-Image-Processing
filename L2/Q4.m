function Y=match(X,Z)

i1=X;
i2=Z;
M = zeros(256,1,'uint8'); 
h1 = imhist(i1); 
h2 = imhist(i2);
cdf1 = cumsum(h1) / numel(i1); 
cdf2 = cumsum(h2) / numel(i2); 
 
for idx = 1 : 256
    diff = abs(cdf1(idx) - cdf2);
    [~,ind] = min(diff);
    M(idx) = ind-1;
end
 

Y = M(double(i1)+1);
 
subplot(2,3,1),imshow(i1);
title('linear');
subplot(2,3,2),imshow(i2);
title('clown');
subplot(2,3,3),imshow(Y);
title('Histogram matched linear');
subplot(2,3,4),imhist(i1);
title('Histogram of linear');
subplot(2,3,5),imhist(i2);
title('Histogram of clown');
subplot(2,3,6),imhist(Y);
title('Histogram of matched image');

    
end