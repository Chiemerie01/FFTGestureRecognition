% gesture_fft_classification.m
% Simulate gestures and classify them using FFT features

clc; clear; close all

% Sampling setup
fs = 100;               % Sampling frequency (Hz)
t = 0:1/fs:1-1/fs;      % Time vector (1 second)
N = length(t);          % Number of samples
f = (0:N-1)*(fs/N);     % Frequency vector

% 1. Simulate gestures
wave = sin(2*pi*5*t) .* (t > 0.2 & t < 0.6);          % 5 Hz sine burst
push = double(t > 0.3 & t < 0.5);                     % Square pulse
swipe = tripuls(t - 0.5, 0.4);                        % Triangle pulse

% 2. Compute FFTs
WAVE_FFT = abs(fft(wave));
PUSH_FFT = abs(fft(push));
SWIPE_FFT = abs(fft(swipe));

% 3. Plot signals and FFTs
figure;

subplot(3,2,1)
plot(t, wave); title('Wave Gesture'); xlabel('Time (s)'); ylabel('Amplitude');

subplot(3,2,2)
plot(f, WAVE_FFT); title('FFT - Wave'); xlabel('Frequency (Hz)'); xlim([0 20]);

subplot(3,2,3)
plot(t, push); title('Push Gesture'); xlabel('Time (s)'); ylabel('Amplitude');

subplot(3,2,4)
plot(f, PUSH_FFT); title('FFT - Push'); xlabel('Frequency (Hz)'); xlim([0 20]);

subplot(3,2,5)
plot(t, swipe); title('Swipe Gesture'); xlabel('Time (s)'); ylabel('Amplitude');

subplot(3,2,6)
plot(f, SWIPE_FFT); title('FFT - Swipe'); xlabel('Frequency (Hz)'); xlim([0 20]);

% 4. Simple peak frequency classification
get_peak_freq = @(fft_data) f(find(fft_data == max(fft_data(1:N/2)), 1));

wave_freq = get_peak_freq(WAVE_FFT);
push_freq = get_peak_freq(PUSH_FFT);
swipe_freq = get_peak_freq(SWIPE_FFT);

fprintf('Wave Gesture Peak Frequency: %.2f Hz\n', wave_freq);
fprintf('Push Gesture Peak Frequency: %.2f Hz\n', push_freq);
fprintf('Swipe Gesture Peak Frequency: %.2f Hz\n', swipe_freq);
