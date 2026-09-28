% This number will define the length of our array f.
N= 10;

% Creates an array called f; the array is from 1 to N, or with length = N.
f= zeros(1,N);

% Update the first element of the array to 1.
f(1) = 1;

% Calculate the dft of f and define it as F. The DFT formula can be found in equation 7.18 in the lecture notes document.
F= fft(f)

% Calculate the inverse of the DFT of F and define it as f_check. The inverse DFT formula can be found in equation 7.28 
% in the lecture notes document.
f_check= ifft(F)