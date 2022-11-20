img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
subplot(3,2,1),imshow(img),title("Original Image");
img=imnoise(img,'salt & pepper');
subplot(3,2,2),imshow(img),title("Image with salt and pepper noise");
filter = fspecial('average');
imf1 = imfilter(img, filter);
subplot(3,2,3),imshow(imf1),title("Image after filtering with averaging filter");
filter = fspecial('sobel');
imf2 = imfilter(img, filter);
subplot(3,2,4),imshow(imf2),title("Image after filtering with sobel filter");

filter = fspecial('gaussian');
imf3 = imfilter(img, filter);
subplot(3,2,5),imshow(imf3),title("Image after filtering with gaussian filter");

filter = fspecial('laplacian');
imf4 = imfilter(img, filter);
subplot(3,2,6),imshow(imf4),title("Image after filtering with laplacian filter");
