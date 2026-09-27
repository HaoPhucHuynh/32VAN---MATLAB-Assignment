[f nu_s] = audioread('unknown_note.wav');
%reads the audio file

f= f(:,1);
%makes the code read only the first channel

N= length(f);
%sets N as the number of samples in the recording

F= fft(f);
%calculates the DFT of f

nu= (0:N-1)'*nu_s/N;
%creates an array of frequencies for which F is defined

M= floor(N/2);
%index that marks the middle of the spectrum

plot(nu(1:M), abs(F(1:M)));
xlabel('\nu (Hz)');
ylabel('|F(\nu)|');
title('Spectrum of the unknown note');
%generates a plot of the magnitude of the bottom half of the spectrum
