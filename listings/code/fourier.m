% -------------------------------------------------------- %
% This  is   a  manual  implementation  of   the  Discrete %
% Fourier  Transform  and  the  Inverse  Discrete  Fourier %
% Transform. The purpose of this is purely educational. No %
% sane  person should  ever use  this code  for production %
% purposes (much too slow).                                %
%                                                          %
% (c) 2017 Raphael Frey, webmaster@alpenwasser.net         %
% -------------------------------------------------------- %
clear all;close all;clc;
set(0,'DefaultFigureWindowStyle','docked');

L = 1e3;           % number of samples in time domain
tmax = 2*pi;       % maximum value of time axis
t = 0:2*pi/L:tmax; % time vector
K = 10;            % number of harmonics
f = 1;             % base frequency of signal in Hertz

% Square wave signal with K harmonics
x = 0;
for k = 1:K
    component = 4/pi*1/(2*k-1) * sin(2*pi*(2*k-1)*f*t);
    x = x + component;
end

% Discrete Fourier Transform of said signal
X = zeros(1,L);
for m = 0:L-1
    for n = 0:L-1
        X(m+1) = X(m+1) + x(n+1) * exp(-j*2*pi*m*n/L);
    end
end
figure;
subplot(2,1,1);
plot(real(X));grid on;
subplot(2,1,2);
plot(angle(X));grid on;

% Inverse DFT
ix = zeros(1,L);
for n = 0:L-1
    for m = 0:L-1
        ix(n+1) = ix(n+1) + 1/L * X(m+1) * exp(j*2*pi*m*n/L);
    end
end

% Reference with Matlab's algorithms
ixML = ifft(fft(x));

figure;
subplot(5,1,1);
plot(t,x);grid on;axis([0 tmax -1.5 1.5]);
title('Source Signal');
subplot(5,1,2);
plot(t(1:1000),abs(ix));grid on;axis([0 tmax -1.5 1.5]);
title('Inverse DFT, absolute Value');
subplot(5,1,3);
plot(t(1:1000),180/pi*angle(ix));grid on;axis([0 tmax -185 185]);
title('Inverse DFT, Phase');
subplot(5,1,4);
plot(t(1:1000),real(ix));grid on;axis([0 tmax -1.5 1.5]);
title('Inverse DFT, Real Part');
subplot(5,1,5);
plot(t(1:1000),real(ix) - real(ixML(1:1000)));grid on;axis([0 tmax -1e-12 1e-12]);
title('Error to Matlab FFT->IFFT (note Y axis scale)');
