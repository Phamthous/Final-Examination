clc;

clear;


Fs = 22050;

delta = 1/Fs;

FC5 = 523.25;

FD5 = 587.33;

FE5 = 659.25;

FF5 = 698.46;

FG5 = 783.99;

FA5 = 880;

FB5 = 987.77;


d1 = 2;

d05 = 1;

d15 = 3;

t1 = delta:delta:d1;

t05 = delta:delta:d05;

t15 = delta:delta:d15;


PC4_1 = zeros(1,Fs*d1);

PD5_1 = zeros(1,Fs*d1);

PD5_05 = zeros(1,Fs*d05);

PA5_1 = zeros(1,Fs*d1);

PA5_05 = zeros(1,Fs*d05);

PE5_05 = zeros(1,Fs*d05);

PF5_05 = zeros(1,Fs*d05);

PD5_15 = zeros(1,Fs*d15);


p = [1 0.1 0.33 0.06 0.05 0.045 0 0.02 0.005 0.005 0 0.005 0.01];

for n=1:length(p);

 %PC4_1 = PC4_1 + p(n)*exp((-1)*t1*4).*cos(2*pi*n*FC5*t1); % sythesize waveform
 PD5_1 = PD5_1 + p(n)*exp((-1)*t1*3).*cos(2*pi*n*FD5*t1);
 PD5_05 = PD5_05 + p(n)*exp((-1)*t05*3).*cos(2*pi*n*FD5*t05);
 PD5_15 = PD5_15 + p(n)*exp((-1)*t15*3).*cos(2*pi*n*FD5*t15);
 PA5_1 = PA5_1 + p(n)*exp((-1)*t1*3).*cos(2*pi*n*FA5*t1);
 PA5_05 = PA5_05 + p(n)*exp((-1)*t05*3).*cos(2*pi*n*FA5*t05); 
 PE5_05 = PE5_05 + p(n)*exp((-1)*t05*3).*cos(2*pi*n*FE5*t05); 
 PF5_05 = PF5_05 + p(n)*exp((-1)*t05*3).*cos(2*pi*n*FF5*t05);
end

y = [PD5_1 PD5_05 PA5_1 PA5_05 PE5_05 PF5_05 PE5_05 PD5_15];
plot(y)
player=audioplayer(y,Fs);
play(player);