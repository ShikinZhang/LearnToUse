clear;
load('testsignal.mat');

beta = cos(550/8196 *2 *pi);
syms x;
eqn = cos(15/8196 * 2 * pi) * (1+x^2) == 2*x;
alpha = solve(eqn,x);

b = (1+alpha)*[1 -2*beta 1];
a = 2*[1 -beta*(1+alpha) alpha];

L = 73113;


y_out(1:L) = 0;
cnt = 3;
while(cnt <= L)
    
    x_0 = y(cnt);
    x_1 = y(cnt - 1);
    x_2 = y(cnt - 2);
    y_1 = y_out(cnt - 1);
    y_2 = y_out(cnt - 2);
    
    y_out(cnt) = (0.75*x_0-1.3685*x_1+0.75*x_2) - (-1.3685*y_1+0.4999*y_2);
    
   cnt = cnt + 1 ;
end

%sound(y)
%sound(y_out)

