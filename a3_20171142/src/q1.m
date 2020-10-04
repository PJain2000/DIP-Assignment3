clear all;
clc;
% 1D Fast Fourier Transform

img1 = randi([1,100],1,5);
img1_fft = q1_fft(img1);

% 2D Fast Fourier Transform

img2 = imread('DIP_2019_A3/q6_img2.png');
subplot(1,2,1)
imshow(img2)

p = max(size(img2));
t = nextpow2(p);
img2_pad = zeros([power(2,t),power(2,t)]);

img2_pad(1:size(img2,1),1:size(img2,2)) = img2;


m = q1_fft(img2_pad);
m = q1_fft(m.');
img_fftq = m.';

subplot(1,2,2)
display_fft(img_fftq)

% display_fft(fft2(img2))