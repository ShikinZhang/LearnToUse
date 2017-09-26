clear;
alpha = 0.25;

b = 1;
a = [1 0 0 0 0 0 0 0 alpha];


% subplot(2,1,1)
% zplane(b,a)
% subplot(2,1,2)
% impz(b,a)

%figure;
%freqz(b,a)

impz(b,a);