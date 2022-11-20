img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
img2 = rgb2gray(img)
S = img2;
P=img2;
h = mkfftfilter(S,'gauss',0.1);
i = mkfftfilter(S,'butterworth1',0.1);
S2 = fft2(im2double(S));
P2 = fft2(im2double(P));
S3 = S2.*fftshift(1-h);
P3 = P2.*fftshift(1-h);
S4 = real(ifft(S3));
P4 = real(ifft(P3));

subplot(3,2,1);
xtitle('original image')
imshow(S);
subplot(3,2,2);
xtitle('image in frequency domain')
imshow(S2);
subplot(3,2,3);
xtitle('gaussian filter')
imshow(1-h);
subplot(3,2,4);
xtitle('butterworth filter')
imshow(1-i);
subplot(3,2,5);
xtitle('image after inverse fourier transform')
imshow(S4);

