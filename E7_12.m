[f nu_s] = audioread('unknown_note.wav');
% read the wav file: f = samples, nu_s = sample frequency

f = f(:,1);
% keep only the first channel (in case the file is stereo)

N = length(f);
% N = number of samples in the recording

F = fft(f);
% calculate the DFT of f

nu = (0:N-1)'*nu_s/N;
% build the array of frequencies for which F is defined

M = floor(N/2);
% M = index that marks the middle of the spectrum

plot(nu(1:M), abs(F(1:M)));
xlabel('\nu (Hz)');
ylabel('|F(\nu)|');
title('Spectrum of the unknown note');
% plot the magnitude of the bottom half of the spectrum
