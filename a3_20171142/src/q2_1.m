clear all;
clc;

img1 = 'DIP_2019_A3/lena.jpg';

% subplot(1,2,1)
% imshow(img1)
% subplot(1,2,2)
% i1 = q2_ideal(img1, 10);
% imshow(i1, [])

% subplot(1,2,1)
% imshow(img1)
% subplot(1,2,2)
% i2 = q2_butterworth(img1, 10, 2);
% imshow(i2, [])

subplot(1,2,1)
imshow(img1)
subplot(1,2,2)
d = q2_gauss(img1, 10);
imshow(d, []);