im = imread(fullpath(getIPCVpath() + "/images/baboon.png"));
subplot(3,2,1);imshow(im) ;

imn = imnoise(im, 'salt & pepper');
subplot(3,2,2);imshow(imn);

filter = fspecial('gaussian');
imf = imfilter(imn, filter);
subplot(3,2,3);imshow(imf);

filter = fspecial('laplacian') ; 
imf1 = imfilter(imn, filter) ;
subplot(3,2,4) ; imshow(imf1) ;

filter = fspecial('sobel') ;
imf2 = imfilter(imn, filter) ;
subplot(3,2,5) ; imshow(imf2) ;

imf3 = immedian(imn,3) ;
subplot(3,2,6) ; imshow(imf3) ;
