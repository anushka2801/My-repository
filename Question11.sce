img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
im = im2bw(img,0.5);
se = imcreatese('rect',3,3);
a = imerode(im,se);
b = imdilate(im,se);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(im),title('Original Image');
subplot(2,2,3),imshow(a),title('Eroded Image');
subplot(2,2,4),imshow(b),title('Dialated Image');
