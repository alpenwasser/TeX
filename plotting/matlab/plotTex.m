clear all;close all;clc;

addpath matlab2tikz/src/;

t = 0:0.01:2*pi;
y = sin(t);
sinewave = figure('name','Sine Wave');
plot(t,y);grid on;
xlim([0,2*pi]);
ylim([-1.1,1.1]);

matlab2tikz('figurehandle',sinewave,'width','\textwidth','height','50mm','plot.tex');