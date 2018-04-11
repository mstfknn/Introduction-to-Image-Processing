n=8;                   
m=120;                    
x=sawtooth(2*pi*(0:(m-1))/m);  
x(find(x>=1))=(1-eps);     
xq=floor((x+1)*2^(n-1));   
xq=xq/(2^(n-1));           
xq=xq-(2^(n)-1)/2^(n);     
xe=x-xq;                   
stem(x,'b');
hold on;
stem(xq,'r');
hold on;
stem(xe,'g');
legend('exact','quantized','error','Location','Southeast')
title(sprintf('Signal, Quantized signal and Error for g bits, g quantization levels',n,2^n));
hold off
