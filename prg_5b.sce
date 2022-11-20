img = imread('C:\Users\ANUSHKA\Downloads\Dip_Practicals_final\Dip_Practicals\img.jpg')
im = rgb2gray(img);

frequency = zeros(1, 256) ;
//creating frequency array
for i=1:a
    for j=1:b
        frequency(im(i, j) + 1) = frequency(im(i,j) + 1) + 1 ;
    end
end
//finding probability
prob = zeros(1, 256) ;
for i=1:256
    prob(i) = frequency(i)/(a*b) ;
end
//cumulative freq calculation
cum_freq_prob = zeros(1, 256) ;
cum_freq_prob = prob(1) ;

for i=2:256
    cum_freq_prob(i) = cum_freq_prob(i-1) + prob(i) ;
end

equalized = zeros(1, 256) ;
//rounding off cumulative freq
for i=1:256
    equalized(i) = round(255*cum_freq_prob(i)) ;
end
//normalization
normalized = zeros(1, 256)

i = 1 ;
j = 1 ;
//displaying equalization values
disp(equalized)

while j<= 256 && i<=256
    if equalized(i) == equalized(j) then
        normalized(equalized(i) + 1) = normalized(equalized(i) + 1) + frequency(j) ;
        j = j+1 ;
    else
        i = j ;
    end
end
//displaying normlaized values after histogram equalization
disp(normalized)

scf(3) ; bar(normalized)
scf(4) ; bar(frequency)
