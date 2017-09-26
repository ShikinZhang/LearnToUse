clear;
alpha_1 = 0.7;
alpha_2 = 0.665;
alpha_3 = 0.63175;

alpha_4 = 0.7;
alpha_5 = 0.77;
alpha_6 = 0.847;

D_1 = 50;
D_2 = 40;
D_3 = 32;
D_4 = 50;
D_5 = 17;
D_6 = 6;

num_1(D_1) = 0;
den_1(D_1) = 0;
num_1(1) = -alpha_1;
den_1(1) = 1;
num_1(D_1)=1;
den_1(D_1)= -alpha_1;

num_2(D_2) = 0;
den_2(D_2) = 0;
num_2(1) = -alpha_2;
den_2(1) = 1;
num_2(D_2)=1;
den_2(D_2)= -alpha_2;

num_3(D_3) = 0;
den_3(D_3) = 0;
num_3(1) = -alpha_3;
den_3(1) = 1;
num_3(D_3)=1;
den_3(D_3)= -alpha_3;

num_4(D_4) = 0;
den_4(D_4) = 0;
num_4(1) = -alpha_4;
den_4(1) = 1;
num_4(D_4)=1;
den_4(D_4)= -alpha_4;

num_5(D_5) = 0;
den_5(D_5) = 0;
num_5(1) = -alpha_5;
den_5(1) = 1;
num_5(D_5)=1;
den_5(D_5)= -alpha_5;

num_6(D_6) = 0;
den_6(D_6) = 0;
num_6(1) = -alpha_6;
den_6(1) = 1;
num_6(D_6)=1;
den_6(D_6)= -alpha_6;

s1 = tf(num_1,den_1);
s2 = tf(num_2,den_2);
s3 = tf(num_3,den_3);
s_1 = s1*s2*s3;
num1 = cell2mat(s_1.num(1));
den1 = cell2mat(s_1.den(1));

s4 = tf(num_4,den_4);
s5 = tf(num_5,den_5);
s6 = tf(num_6,den_6);
s_2 = s4*s5*s6;
num2 = cell2mat(s_2.num(1));
den2 = cell2mat(s_2.den(1));

subplot(211);
impz(num1,den1);
subplot(212);
impz(num2,den2);









