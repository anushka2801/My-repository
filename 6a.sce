img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg');
img1 = rgb2gray(img);
[a,b] = size(img1);
subplot(2,2, 1), imshow(uint8(img)),title("Original Image");



//Translation
mat2 = [1 0 0;0 1 0;40 0 1]
transl = imtransform(img1,mat2,'affine');
subplot(2,2, 4), imshow(uint8(transl), title("Translation"));

