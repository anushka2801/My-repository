img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg');
img1 = rgb2gray(img);
[a,b] = size(img1);
subplot(2,2, 1), imshow(uint8(img)),title("Original Image");


//Scaling
mat1 = [2 0 0;0 2 0;0 0 1]
scale = imtransform(img1,mat1,'affine');
subplot(2,2, 3), imshow(uint8(scale));
