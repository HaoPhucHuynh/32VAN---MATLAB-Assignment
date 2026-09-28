% Reads the audio file
[f nu_s] = audioread('unknown_note.wav');

% Makes the code read only the first channel
f= f(:,1);

% Sets N as the number of samples in the recording
N= length(f);

% Calculates the DFT of f
F= fft(f);

% Creates an array of frequencies for which F is defined
nu= (0:N-1)'*nu_s/N;

% Index that marks the middle of the spectrum
H= floor(N/2);

% Generates a plot of the magnitude of the bottom half of the spectrum
plot(nu(1:H), abs(F(1:H)));
title('Audio spectrum for the unknown note');
xlabel('\nu (Hz)');
ylabel('|F(\nu)|');
xlim([0 20000]); %i added this to limit the frequencies into the audible range