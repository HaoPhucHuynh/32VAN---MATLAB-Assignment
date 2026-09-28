%Exercise 8.15
clear;
 
% Physical size (x and y) of the calculation domain [m]
D=2;
 
% Number of points in either direction
N=513;
 
% Spatial sampling 'period' (cell size) in either direction [m]
dx=D/N;
dy=D/N;
 
% Position (center) and size of the rectangle (in index 'units')
% (the width and height are 2*Lxh+1 and 2*Lyh+1, respectively.
% N/2 can be 256.5 => round to interger
Cx=ceil(N/2);
Cy=ceil(N/2);
Lxh=2;
Lyh=4;
 
% Width and height of the rectangle [m]
a = (1+Lxh*2)*dx;
b = (1+Lyh*2)*dy;
 
% Arrays that contain the x and y coordinates of the cells
% (x and y axes).
x=(0:N-1)*dx;
y=(0:N-1)*dy;
 
% Create and plot the rectangle f (left figure)
% Fix from the given code: index 1 = row => y ; index 2 = column => x.
f=zeros(N,N);
f(Cy-Lyh:Cy+Lyh,Cx-Lxh:Cx+Lxh)=1;
 
colormap('default');
 
subplot(1,3,1), imagesc(x,y,abs(f));
axis image;
title('f(x,y)');
xlabel('x[m]');
ylabel('y[m]');
 
 
% Spatial wave number resolutions [rad/m]:
dkx=2*pi/D;
dky=2*pi/D;
% Wave number values after fftshift. use eq. 7.22 in lecture notes.
kx_s=(-floor(N/2):N-1-floor(N/2))*dkx;
ky_s=(-floor(N/2):N-1-floor(N/2))*dky;
 
% Note: multiply with the spatial periods (lengths) to obtain
%       (an approximation of) the spectrum of the actual
%       'unsampled' function.
F=dx*dy*fft2(f);
Fsh=fftshift(F);
 
subplot(1,3,2), imagesc(kx_s,ky_s,abs(Fsh));
axis image;
title('|F(k_x,k_y)|, numerical');
xlabel('k_x[rad/m]');
ylabel('k_y[rad/m]');
 
% Analytical result (similar to exercise 8.4 in lecture notes):
% F(kx,ky) = a*sinc(kx*a/2) * b*sinc(ky*b/2)
% MATLAB's sinc(u) = sin(pi*u)/(pi*u) => add /pi
A = (b*sinc(ky_s.'*b/(2*pi))) * (a*sinc(kx_s*a/(2*pi)));
 
subplot(1,3,3), imagesc(kx_s,ky_s,abs(A));
axis image;
title('|F(k_x,k_y)|, analytical');
xlabel('k_x[rad/m]');
ylabel('k_y[rad/m]');
