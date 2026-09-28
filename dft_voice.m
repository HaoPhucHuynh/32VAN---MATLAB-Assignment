% Excersize 7-13: Experiments on a human voice

% Reading the audio file
[f, nu_s] = audioread("a_low.wav");
f = f(:,1); %Ensuring single channel

% Calculating Fourier and power spectrum
Ns = length(f); %A quired samples
F = fft(f);
P = abs(F).^2; % Dot required as each value is being squared
nu = (0:Ns-1) * (nu_s / Ns); % Frequencies used

% Plotting
MaxFreq = 3000;
x = find(nu <= MaxFreq); %Finding frequencies that are lower than and equal to the maximum frequency

figure(1)
semilogy(nu(x), P(x));
xlabel('nu (Hz)');
ylabel('Power spectrum |F(nu)|^2');
title('Power spectrum of a voice recording. (a\_low.wav)');