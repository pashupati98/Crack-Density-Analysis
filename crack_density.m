a=imread('e22.png');
imshow(a)
b=rgb2gray(a);
figure, imshow(b) 
c = b>100;
figure, imshow(c)
p = size(c);


count=0;

for i=1:p(1,1)
    for j=1:p(1,2)
        d=c(i,j);
        if d==0
            count=count+1;
        end
    end
end
total_pixels =p(1,1)*p(1,2);
crack_density = count/total_pixels;

