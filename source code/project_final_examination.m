Fs=44100;
m=2*fs;
c=zeros(1,m);
n=int32(Fs/440.0*2);
b=rand(1,n)-0.5
for i=1:m
    b(mod(i-1,n)+1)=0.5*(b(mod(i-1,n)+1)+ b(mod(i,n)+1));
    c(i)= b(mod(i-1,n)+1);
end
plot(c);
player=audioplayer(c,Fs);
play(player);