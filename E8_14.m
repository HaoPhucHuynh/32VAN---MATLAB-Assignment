% Exercise 8.14

f = imread('van_aartsen.jpg'); % creating matrix (f)
F = fft2(f); % Fourier transform of f (Spectrum of f)

[M, N] = size(f); % getting the size of f
g = zeros(M, N); % creating a zero matrix g of the same size as f
L = 5;
g(1:L, 1:L) = 1; % filling top left L x L pixels with value 1

G = fft2(g); % Fourier transform of g (spectrum of g)

FG = F .* G; % product of F and G