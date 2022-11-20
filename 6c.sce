img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg');
img1 = rgb2gray(img);
[a,b] = size(img1);
subplot(6,1, 1), imshow(uint8(img)),title("Original Image");

//Rotation
mat = [cosd(30) -sind(30) 0;sind(30) cosd(30) 0;0 0 1]
rotation = imtransform(img1,mat,'affine');
subplot(6,1, 2), imshow(uint8(rotation), title("Rotation"))
/*

//Translation
mat2 = [1 0 0;0 1 0;40 0 1]
transl = imtransform(img1,mat2,'affine');
subplot(6,1, 4), imshow(uint8(transl), title("Translation"));
*/
