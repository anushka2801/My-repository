img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg');
img1 = rgb2gray(img);
[a,b] = size(img1);
subplot(6,1, 1), imshow(uint8(img)),title("Original Image");

//Shrinking
c = a/2
d = b/2

new_img = zeros(c, d)
x = 1
y = 1

for i=1:c
    for j=1:d
        new_img(i, j) = im(x, y)
        y = y + 2
    end
    y = 1
    x = x + 2
end
subplot(6,1, 6), imshow(uint8(new_img)),title("Shrinking")
