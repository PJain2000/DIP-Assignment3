clear all;
clc;

I = imread('DIP_2019_A3/q6_img2.png');

subplot(1,2,1)
imshow(I)

H = [[0,1,0];[1,2,1];[0,1,0]];

[a1, b1] = size(H);
[a2, b2] = size(I);

z = [a1,b1,a2,b2];
x = max(z);
y = nextpow2(x);

p = power(2,y);
q = power(2,y);

o1 = padarray(H, [floor((p-a1)/2) floor((q-b1)/2)],'post');
H_pad = padarray(o1, [ceil((p-a1)/2) ceil((q-b1)/2)],'pre');

o2 = padarray(I, [floor((p-a2)/2) floor((q-b2)/2)],'post');
I_pad = padarray(o2, [ceil((p-a2)/2) ceil((q-b2)/2)],'pre');

H1 = fft2(H_pad);
% display_fft(H1)
I1 = fft2(I_pad);

i = ifftshift(ifft2(H1.*I1));

subplot(1,2,2)
imshow(abs(i), [])