img1 = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
img2 = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img1.jpg')
[a,b,c] = size(img1)
img2 = imresize(img2,[a,b]);
imgg1 = double(img1)
imgg2 = double(img2)

//Mean
im1 = rgb2gray(img1);
im2 = double(im1);
x1 = mean2(im1)
theSum = 0.0;
for row = 1 : a
    for col = 1 : b
        theSum = theSum + im2(row,col);
    end
end
x2 = theSum/(a*b);
disp(x1)
disp(x2)
