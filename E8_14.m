% Exercise 8.14

% Calculations
f = imread('van_aartsen.jpg'); % Creating matrix (f)
F = fft2(f); % Fourier transform of f (Spectrum of f)

[M, N] = size(f); % Getting the size of f
g = zeros(M, N); % Creating a zero matrix g of the same size as f
L = 5;
g(1:L, 1:L) = 1; % Filling top left L x L pixels with value 1

G = fft2(g); % Fourier transform of g (spectrum of g)

FG = F .* G; % Product of F and G
f_blurred = real(ifft2(FG)); % Inverse Fourier transform (reconstruction of the image)

FG_shifted = fftshift(FG); % Magnitude spectrum FG
S = log(abs(FG_shifted) + 1); % Logarithmic compression for display

% Plotting
figure;
subplot(1,2,1); % Displays both images side by side
imagesc(f)
axis image;
title('Original Picture')

subplot(1,2,2)
imagesc(f_blurred);
axis image
title('Smooth picture')