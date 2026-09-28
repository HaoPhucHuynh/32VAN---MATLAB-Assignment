% Exercise 7-13: Experiments on a human voice

% Read the audio file.
[f, nu_s] = audioread("a_low.wav");
f = f(:,1); % Isolate a single channel.

% Calculate the Fourier and power spectrum.
Ns = length(f); % Acquire samples
F = fft(f);
P = abs(F).^2; % A "." is required in order to square each value individually. 
nu = (0:Ns-1) * (nu_s / Ns); % Delta nu with each frequency corresponding to F.

% Plotting
MaxFreq = 3000;
x = find(nu <= MaxFreq); 

figure(1)
semilogy(nu(x), P(x));
xlabel('nu (Hz)');
ylabel('Power spectrum |F(nu)|^2');
title('Power spectrum of a voice recording. (a\_low.wav)');