alpha = 0.2;
b = [1 0 0 0 0 0 0 0 alpha];
a = 1;


subplot(2,1,1)
zplane(b,a)
subplot(2,1,2)
impz(b,a)