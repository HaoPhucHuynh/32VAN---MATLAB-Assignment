%this number will define the length of our array f
N= 10;

%creates an array called f, the array is from 1 to N, or length =N
f= zeros(1,N);

%updates the first element of the array to 1
f(1) = 1;

%calculates the dft of f and defines it as F
F= fft(f)

%calculates the inverse of the DFT of F and defines it as f_check
f_check= ifft(F)

%creates an array of DFT indices k
k= 0:N-1;

%calculates the normalised frequency for every index k
omega_k= 2*pi*k/N