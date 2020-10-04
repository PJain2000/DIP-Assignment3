clear all;
clc;

img1 = rgb2gray(imread('DIP_2019_A3/land.png'));

subplot(1,2,1)
imshow(img1)

frequencyImage = fftshift(fft2(img1));
amplitudeImage = log(abs(frequencyImage));
minValue = min(min(amplitudeImage));
maxValue = max(max(amplitudeImage));
% subplot(1,2,1)
% imshow(amplitudeImage, []);


[midpointX, midpointY] = find(amplitudeImage == maxValue);

frequencyImage([98:100], [135:260]) = 0;
frequencyImage([98:100], [1:125]) = 0;
frequencyImage([1:95], [130:132]) = 0;
frequencyImage([105:196], [130:132]) = 0;
% subplot(1,2,2)
% imshow( log(abs(frequencyImage)),[])

filteredImage = ifft2(fftshift(frequencyImage));
amplitudeImage3 = abs(filteredImage);
subplot(1,2,2)
imshow(abs(filteredImage), [])

