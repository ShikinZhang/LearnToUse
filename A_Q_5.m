beta = cos(330/44100 * 2 *pi);
syms x;
eqn = cos(0.1*pi)*(1+x^2) == 2*x;
alpha = solve(eqn,x);

alpha = single(alpha(1));

b = (1+alpha)*[1 -2*beta 1];
a = 2*[1 -beta*(1+alpha) alpha];

zplane(b,a)
figure
freqz(b,a,1024)
