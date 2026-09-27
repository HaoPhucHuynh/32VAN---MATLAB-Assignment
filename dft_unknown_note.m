%reads the audio file
[f nu_s] = audioread('unknown_note.wav');

%makes the code read only the first channel
f= f(:,1);

%sets N as the number of samples in the recording
N= length(f);

%calculates the DFT of f
F= fft(f);

%creates an array of frequencies for which F is defined
nu= (0:N-1)'*nu_s/N;

%index that marks the middle of the spectrum
M= floor(N/2);

%generates a plot of the magnitude of the bottom half of the spectrum
plot(nu(1:M), abs(F(1:M)));
xlabel('\nu (Hz)');
ylabel('|F(\nu)|');
title('Spectrum of the unknown note');