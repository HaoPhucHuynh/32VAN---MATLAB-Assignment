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
H= floor(N/2);

%generates a plot of the magnitude of the bottom half of the spectrum
plot(nu(1:H), abs(F(1:H)));
title('Audio spectrum for the unknown note');
xlabel('\nu (Hz)');
ylabel('|F(\nu)|');
xlim([0 20000]); %i added this to limit the frequencies into the audible range