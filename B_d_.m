clear;
[x,fs,nbits]=wavread('speech.wav');
L = 30071;
y_out_1(1:L) = 0;
D = 50;
a = 0.7;
cnt = D;
while(cnt <= L )
    
    if(cnt <= L)
        x_0 = x(cnt);
    else
        x_0 = 0;
    end
    y_1 = y_out_1(cnt -D +1);
    x_1 = x(cnt-D+1);
    
    
    y_out_1(cnt) = -a*x_0 + x_1 - (a*y_1);
    
   cnt = cnt + 1 ;
end

y_out_2(1:L) = 0;
D = 17;
a = 0.77;
cnt = D;
while(cnt <= L)
    
    if(cnt <= L)
        x_0 = x(cnt);
    else
        x_0 = 0;
    end
    y_1 = y_out_2(cnt -D +1);
    x_1 = y_out_1(cnt-D+1);
    
    
    y_out_2(cnt) = a*x_0 + x_1 - (a*y_1);
    
   cnt = cnt + 1 ;
end

y_out_3(1:L) = 0;
D = 6;
a = 0.847;
cnt = D;
while(cnt <= L)
    
    if(cnt <= L)
        x_0 = x(cnt);
    else
        x_0 = 0;
    end
    y_1 = y_out_3(cnt -D +1);
    x_1 = y_out_2(cnt-D+1);
    
    
    y_out_3(cnt) = -a*x_0 + x_1 - (a*y_1);
    
   cnt = cnt + 1 ;
end

aud = audioplayer(y_out_2,fs);

aud.play()