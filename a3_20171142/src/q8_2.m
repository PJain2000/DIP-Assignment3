clear all;
clc;

I = imread('DIP_2019_A3/rectangle.jpg');

J = imtranslate(I,[15, 25]);

% figure
% subplot(2,1,1)
% imshow(I)
% subplot(2,1,2)
% imshow(J)

subplot(2,1,1)
display_fft(fft2(I))

subplot(2,1,2)
display_fft(fft2(J))