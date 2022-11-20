img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg');
img1 = rgb2gray(img);
[m,n] = size(img1);
//subplot(6,1, 1), imshow(uint8(img)),title("Original Image");

//Zooming
for i=1:2*m
    for j=1:2*n
        a=i-floor(i/2);
        b=j-floor(j/2);
        new_img_2(i, j) = img1(a,b);
    end
end
figure, imshow(uint8(new_img_2)),title("Zooming")
