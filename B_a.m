clear;
[x,fs,nbits]=wavread('speech.wav');
L = 30071;
y_out(1:L) = 0;
cnt = 0.22*8000;
while(cnt <= L)
    
    x_0 = x(cnt);
    x_1 = x(cnt - 0.22*8000 +1);
    
    
    y_out(cnt) = x_0 + 0.75*x_1;
    
   cnt = cnt + 1 ;
end

aud = audioplayer(y_out,fs);

 aud.play()