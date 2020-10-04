clear all;
clc;

f = imread('coins.png');
h = imread('bag.png');

[a1, b1] = size(f);
[a2, b2] = size(h);

z = [a1,b1,a2,b2];
x = max(z);
y = nextpow2(x);

p = power(2,y);
q = power(2,y);

o1 = padarray(f, [floor((p-a1)/2) floor((q-b1)/2)],'post');
f2 = padarray(o1, [ceil((p-a1)/2) ceil((q-b1)/2)],'pre');

o2 = padarray(h, [floor((p-a2)/2) floor((q-b2)/2)],'post');
h2 = padarray(o2, [ceil((p-a2)/2) ceil((q-b2)/2)],'pre');

F2 = fft2(f2);
H2 = fft2(h2);


l2 = conv2(f2, h2, 'same');
l2 = fft2(l2);
l2 = l2./max(l2(:));

r2 = F2.*H2;
r2 = r2./max(r2(:));

a2 = norm(l2 - r2);
a2 = a2.^2;
error2 = a2/(511*511);

