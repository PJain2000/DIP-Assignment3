function [mat] = q1_fft(m)
    if size(m, 1) == 1
        mat = m;
    else
        m_even = m(1:2:end, :);
        m_odd = m(2:2:end, :);
        mat2 = q1_fft(m_odd);
        mat1 = q1_fft(m_even);
        [X, Y] = meshgrid(0: size(mat2, 2)-1, 0:size(mat2, 1)-1);
        m1 = mat1 + exp(-(2*pi*1j.*Y)/size(m, 1)).*mat2;
        m2 = mat1 - exp(-(2*pi*1j.*Y)/size(m, 1)).*mat2;
        mat = [m1;m2];
    end
end