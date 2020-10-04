function [g] = q2_butterworth(X,P,n)
      f=imread(X);
      f = f(:,:,1);
      [M,N]=size(f);
      F=fft2(double(f));
      
      u=0:(M-1);
      idx=find(u>M/2);
      u(idx)=u(idx)-M;
      
      v=0:(N-1);
      idy=find(v>N/2);
      v(idy)=v(idy)-N;
      
      [V,U]=meshgrid(v,u);
      D=sqrt(U.^2+V.^2);
      
      
      H=1./(1+power((D/P),2*n));
      G=H.*F;
      g=real(ifft2(double(G)));
%       imshow(f),figure,imshow(g,[ ])
end