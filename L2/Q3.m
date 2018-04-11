function Y=equalize(X)
   
[n,m]=size(X);
    temp=n*m;
    Y=zeros(n,m);
    Imin=min(min(X));
    Imax=max(max(X));
    for i=Imin:Imax
        Y(X==i)=round(sum(sum(X<=i)))/temp*255;
    end
    figure;colormap gray;
    imagesc(X);
    title('original image');
    figure;colormap gray;
    imagesc(Y);
    title('new image');
end
