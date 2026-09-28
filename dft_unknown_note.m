% Read the audio file.
[f nu_s] = audioread('unknown_note.wav');

% Make the code read only the first channel.
f= f(:,1);

% Set N as the number of samples in the recording.
N= length(f);

% Calculate the DFT of f.
F= fft(f);

% Create an array of frequencies for which F is defined.
nu= (0:N-1)'*nu_s/N;

% Create an index that marks the middle of the spectrum.
H= floor(N/2);

% Generate a plot of the magnitude for the bottom half of the spectrum.
plot(nu(1:H), abs(F(1:H)));
title('Audio spectrum for the unknown note');
xlabel('\nu (Hz)');
ylabel('|F(\nu)|');
xlim([0 20000]); % Limit the frequencies into the standard human audible range.