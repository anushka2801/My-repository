
//1.Read and display image in SCILAB/MATLAB  
img=imread("C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg")
imshow(img)

//2.Resize given image 
imga = imresize(img, 1.5);
imgb = imresize(img, 1.5, 'bilinear');
imgc = imresize(img, [100,200], 'bicubic');
figure,imshow(imga)
figure,imshow(imgb)
figure,imshow(imgc)

//3.Convert given color image into gray-scale image 
img_gray=rgb2gray(img)
figure,imshow(img_gray)

//4.Convert given color/gray-scale image into black & white image 
img_bw=im2bw(img,0.5)
figure,imshow(img_bw)

//5.Draw image profile
improfile(img)

//6.Separate color image in three R G & B planes
r = size(img, 1);
c = size(img, 2);
// creating zero matrices
R = zeros(r, c, 3);
G = zeros(r, c, 3);
B = zeros(r, c, 3);
// storing the corresponding color plane
// red plane
R(:, :, 1) = img(:, :, 1);
// green plane
G(:, :, 2) = img(:, :, 2);
// blue plane
B(:, :, 3) = img(:, :, 3);
// displaying the images
figure, imshow(uint8(R));
figure, imshow(uint8(G));
figure, imshow(uint8(B));

//7.Create color image using R, G and B three separate planes.
R = img(:, :, 1);
// green plane
G = img(:, :, 2);
// blue plane
B = img(:, :, 3);
// Recombine the individual color channels to create the original RGB image again.
combin= cat(3,R,G,B);
figure,imshow(combin)


//9.Write given 2-D data in image file
t=[2,3,4;5,6,7;9,8,2];
matrix_to_image=mat2gray(t)
figure,imshow(image_to_matrix)
