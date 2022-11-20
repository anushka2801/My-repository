img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
img = rgb2gray(img)
[a,b] = size(img)
//Negative of Image
img1 = zeros(a,b)
for k=1:b
    img1(:,b) = 255-img(:,b);
end
//Flip Image
for row=1:a
    for col=1:b
        img2(row,col) = img(row,b-col+1)
    end
end
//Thresholding
img3 = zeros(a,b)
th = 156
for row=1:a
    for col=1:b
        if(img(row,col)>th)
            img3(row,col)=1
        else
            img3(row,col)=0
        end
    end
end
//Contrast Stretching
img4 = imadjust(img,[0.5 1],[0,0.5]);
//Show
subplot(5,1,1);imshow(img);
subplot(5,1,2);imshow(img1);
subplot(5,1,3);imshow(img2);
subplot(5,1,4);imshow(img3);
subplot(5,1,5);imshow(img4);
