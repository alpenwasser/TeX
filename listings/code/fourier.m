% -------------------------------------------------------- %
% This  is   a  manual  implementation  of   the  DFT  for %
% educational purposes.   No sane  person should  ever use %
% this code for production purposes (much too slow).       %
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

% Generate square wave signal with K harmonics
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
