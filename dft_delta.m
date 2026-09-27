%this number will define the length of our array f
N= 10;

%creates an array called f, the array is from 1 to N, or length =N
f= zeros(1,N);

%updates the first element of the array to 1
f(1) = 1;

%calculates the dft of f and defines it as F. the DFT formula can be found in equation 7.18 in the lecture notes document.
F= fft(f)

%calculates the inverse of the DFT of F and defines it as f_check. the inverse DFT formula can be found in equation 7.28 in the lecture notes document.
f_check= ifft(F)