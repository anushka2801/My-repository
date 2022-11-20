img1 = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
img2 = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img1.jpg')
[a,b,c] = size(img1)
img2 = imresize(img2,[a,b]);
imgg1 = double(img1)
imgg2 = double(img2)
//Add
img3 = imadd(img2,img1);
for i=1:a
    for j=1:b
        for k=1:c
            img4(i,j,k) = imgg1(i,j,k)+imgg2(i,j,k)
            if(img4(i,j,k)>255)
                img4(i,j,k)=255
               end
        end
    end    
end
subplot(2,2,1);imshow(uint8(img3));
subplot(2,2,2);imshow(uint8(img4));

//Subtract
/*img6 = imsubtract(img1,img2);
for i=1:a
    for j=1:b
        for k=1:c
            img5(i,j,k) = imgg1(i,j,k)-imgg2(i,j,k)
            if(img5(i,j,k)<0)
                img5(i,j,k)=0
               end
        end
    end    
end
subplot(2,2,3);imshow(uint8(img5));
subplot(2,2,4);imshow(uint8(img6));
//Mean
im1 = rgb2gray(img1);
im2 = double(im1);
x1 = mean2(im1)
theSum = 0.0;
for row = 1 : a
    for col = 1 : b
        theSum = theSum + im2(row,col);
    end
end
x2 = theSum/(a*b);
disp(x1)
disp(x2)*/
