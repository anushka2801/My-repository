img1 = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
img2 = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img1.jpg')
img1=im2bw(img1,0.5);
img2=im2bw(img2,0.5);
[a b]=size(img1);
img2=imresize(img2,[a b]);
for i=1:b
    result=img1(:,i)&img2(:,i);
end
subplot(3,2,1),imshow(img1),title("Original Image 1");
subplot(3,2,2),imshow(img2),title("Original Image 2");
subplot(3,2,3),imshow(result),title("Images after AND-Operation");
for i=1:b
    result=img1(:,i)|img2(:,i);
end
subplot(3,2,4),imshow(result),title("Images after OR-Operation");
for i=1:b
    result=~(~(img1(:,i))|~(img2(:,i)));
end
subplot(3,2,5),imshow(result),title("Images after Intersection-Operation");
for i=1:b
    result=~(img1(:,i));
end
disp(result);
subplot(3,2,6),imshow(result),title("Images after NOT-Operation");
