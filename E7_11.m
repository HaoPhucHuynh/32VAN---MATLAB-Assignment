%Excersize 7-11: The DFT of a cosine

%%Parameters
nu_0 = 440;
nu_s = 2000;
Dt = 1;

T_s = 1/nu_s; %Sampling period
Ns = nu_s * Dt; %Number of samples
t = (0:Ns - 1) * T_s; %Time array containing N times

%DFT of a cosine
f = cos(2 * pi * t * nu_0); %Sample frequency
F = fft(f);
nu = (0:Ns-1) * (nu_s / Ns); %Delta nu with each frequency corresponding to F

%Plot of |F|
figure(1);
subplot(2,1,1) %Used to show both the absolute |F| and the following shifted |F| on the same figure window

plot(nu, abs(F));
xlabel('nu (Hz)');
ylabel('|F(nu)|');
title("Absolute DFT spectrum of a cosine.");
grid on;

%Shifted Frequency DFT
F_shifted = fftshift(F);
nu_shifted = (-Ns/2: Ns/2 - 1) * (nu_s/Ns); %Frequency values running from -half of nu to half of nu - 1
%-1 necessary due to 0 being a value, keeping the total amount of N in nu

%Plot of shifted F
subplot(2,1,2)

plot(nu_shifted, abs(F_shifted));
xlabel('nu (Hz)');
ylabel('|F(nu)|');
title("Shifted DFT spectrum of a cosine.")
grid on;

%Bottom half plot
N_half = Ns/2; %Counts only the first half of Ns

figure(2)
plot(nu(1:N_half), abs(F(1:N_half))); %nu and F must run from the first index to half of N
xlabel('nu (Hz)');
ylabel('|F(nu)|');
title('Bottom half of DFT spectrum.');
grid on;