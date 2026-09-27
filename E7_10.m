N = 10;
%this number will define the length of our array f

f = zeros(1,N);
%creates an array called f, the array is from 1 to N, or length =N

f(1) = 1;
%updates the first element of the array to 1

F = fft(f)
%calculates the digital fourier transform (DFT) of f and defines it as F

f_check = ifft(F)
%calculates the inverse of the DFT of F and defines it as f_check