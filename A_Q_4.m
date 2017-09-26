clear;
alpha = 0.5;

b = [-alpha 0 0 0 0 0 0 0 1];
a = [1 0 0 0 0 0 0 0 -alpha];


% figure
% freqz(b,a)
% figure
% zplane(b,a)
% figure
% impz(b,a)
impz(b,a)
