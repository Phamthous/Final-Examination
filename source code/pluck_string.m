Fs=44100;
m0=Fs*2;

FC4 = 440.00;
PC4=zeros(1,m0);

n0=int32(Fs/FC4*2);
b0=5*(rand(1,n0)-0.5);

for i=1:m0
    b0(mod(i-1,n0)+1)=0.9*(b0(mod(i-1,n0)+1));
    PC4(i)=b0(mod(i-1,n0)+1);
end
plot(PC4);
player=audioplayer(PC4,Fs);
play(player);