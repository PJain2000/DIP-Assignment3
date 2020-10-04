function display_fft(F)
    F = fftshift(F);
    
    F = abs(F);
    F = log(F+1);
    F = mat2gray(F);
    
    imshow(F,[])
end