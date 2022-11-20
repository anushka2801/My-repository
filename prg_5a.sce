img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
im = rgb2gray(img);
scf(1);
imhist(im, 256, 0.5);

new_img = imhistequal(im) ;
scf(0);
imhist(new_img, 256, 0.5, 'green') ;
