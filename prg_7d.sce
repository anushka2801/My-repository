image = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg');
img = rgb2gray(image);

 
subplot(2,2,1);
imshow(img);
title('Original image');

j = imnoise(img, 'salt & pepper');
//removing noise
Kmedian = immedian(j, 3);
 //Median filter
 subplot(2,2, 2);
 imshow(Kmedian);
 title('Image after applying median filter');
