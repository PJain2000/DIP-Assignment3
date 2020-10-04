clear all;
clc;

img1 = 'DIP_2019_A3/lena.jpg';

i1 = q2_gauss(img1, 10);

i2 = q2_gauss(img1, 200);

imshow(i1-i2, [])