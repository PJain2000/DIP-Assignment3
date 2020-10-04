clear all;
clc;

I = rgb2gray(imread('DIP_2019_A3/bricks.jpg'));

Ib = imgaussfilt(I, 8);

nx = 2;
ny = 2;

s = size(Ib);

Iy = [];
for i = 1:s(1)
    if mod(i,ny) == 0
        Iy = [Iy;Ib(i,:)];
    end 
end

Ixy = [];
for i = 1:s(2)
    if mod(i,nx) == 0
        Ixy = horzcat(Ixy, Iy(:,i));
    end
end

Ixy = repelem(Ixy,ny,nx);

subplot(1,2,1)
% imshow(I, [])
display_fft(fft2(Ib))
subplot(1,2,2)
% imshow(Ixy, [])
display_fft(fft2(Ixy))




