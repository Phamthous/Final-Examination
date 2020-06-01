clc;
Fs = 22050;
Ts = 1/Fs;

FC5 = 261.63;
FD5 = 293.66;
FE5 = 329.63;
FF5 = 349.23;
FG5 = 392.00;
FA5 = 440.00;
FB5 = 493.88;
FC6 = 523.25;
FD6 = 587.33;
FE6 = 659.25;
FF6 = 698.46;
FG6 = 783.99;
FA6 = 880.00;

d1 = 0.5;
d2 = 0.4; 
d3 = 1.5;
d4 = 1;
 
dt1=Ts:Ts:d1;
dt2=Ts:Ts:d2;
dt3=Ts:Ts:d3;
dt4=Ts:Ts:d4;

PC5_dt2 = zeros(1,Fs*d2);
PA5_dt2 = zeros(1,Fs*d2);
PE5_dt2 = zeros(1,Fs*d2);
PF5_dt2 = zeros(1,Fs*d2);
PB5_dt2 = zeros(1,Fs*d2);
PD5_dt2 = zeros(1,Fs*d2);
PG5_dt2 = zeros(1,Fs*d2);
PC6_dt2 = zeros(1,Fs*d2);
PD6_dt2 = zeros(1,Fs*d2);
PE6_dt2 = zeros(1,Fs*d2);
PF6_dt2 = zeros(1,Fs*d2);
PG6_dt2 = zeros(1,Fs*d2);
PA6_dt2 = zeros(1,Fs*d2);

PC5_dt1 = zeros(1,Fs*d1);
PA5_dt1 = zeros(1,Fs*d1);
PE5_dt1 = zeros(1,Fs*d1);
PF5_dt1 = zeros(1,Fs*d1);
PB5_dt1 = zeros(1,Fs*d1);
PD5_dt1 = zeros(1,Fs*d1);
PG5_dt1 = zeros(1,Fs*d1);
PC6_dt1 = zeros(1,Fs*d1);
PD6_dt1 = zeros(1,Fs*d1);
PE6_dt1 = zeros(1,Fs*d1);
PF6_dt1 = zeros(1,Fs*d1);
PG6_dt1 = zeros(1,Fs*d1);
PA6_dt1 = zeros(1,Fs*d1);

PC5_dt3 = zeros(1,Fs*d3);
PA5_dt3 = zeros(1,Fs*d3);
PE5_dt3 = zeros(1,Fs*d3);
PF5_dt3 = zeros(1,Fs*d3);
PB5_dt3 = zeros(1,Fs*d3);
PD5_dt3 = zeros(1,Fs*d3);
PG5_dt3 = zeros(1,Fs*d3);
PC6_dt3 = zeros(1,Fs*d3);
PD6_dt3 = zeros(1,Fs*d3);
PE6_dt3 = zeros(1,Fs*d3);
PF6_dt3 = zeros(1,Fs*d3);
PG6_dt3 = zeros(1,Fs*d3);
PA6_dt3 = zeros(1,Fs*d3);

PC5_dt4 = zeros(1,Fs*d4);
PA5_dt4 = zeros(1,Fs*d4);
PE5_dt4 = zeros(1,Fs*d4);
PF5_dt4 = zeros(1,Fs*d4);
PB5_dt4 = zeros(1,Fs*d4);
PD5_dt4 = zeros(1,Fs*d4);
PG5_dt4 = zeros(1,Fs*d4);
PC6_dt4 = zeros(1,Fs*d4);
PD6_dt4 = zeros(1,Fs*d4);
PE6_dt4 = zeros(1,Fs*d4);
PF6_dt4 = zeros(1,Fs*d4);
PG6_dt4 = zeros(1,Fs*d4);
PA6_dt4 = zeros(1,Fs*d4);

Amplitude = [1 0.1 0.33 0.06 0.05 0.045 0 0.02 0.005 0.005 0 0.005 0.01];

for n=1:length(Amplitude);

 PC5_dt1 = PC5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FC5*dt1);
 PD5_dt1 = PD5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FD5*dt1);
 PG5_dt1 = PG5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FG5*dt1);
 PA5_dt1 = PA5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FA5*dt1); 
 PE5_dt1 = PE5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FE5*dt1); 
 PF5_dt1 = PF5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FF5*dt1);
 PB5_dt1 = PB5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FB5*dt1);
 PC6_dt1 = PC6_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FC6*dt1);
 PD6_dt1 = PD6_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FD6*dt1);
 PE6_dt1 = PE6_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FE6*dt1);
 PF6_dt1 = PF6_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FF6*dt1);
 PG6_dt1 = PG6_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FG6*dt1);
 PA6_dt1 = PA6_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FA6*dt1);
 
 PC5_dt2 = PC5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FC5*dt2);
 PD5_dt2 = PD5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FD5*dt2);
 PG5_dt2 = PG5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FG5*dt2);
 PA5_dt2 = PA5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FA5*dt2); 
 PE5_dt2 = PE5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FE5*dt2); 
 PF5_dt2 = PF5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FF5*dt2);
 PB5_dt2 = PB5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FB5*dt2);
 PC6_dt2 = PC6_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FC6*dt2);
 PD6_dt2 = PD6_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FD6*dt2);
 PE6_dt2 = PE6_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FE6*dt2);
 PF6_dt2 = PF6_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FF6*dt2);
 PG6_dt2 = PG6_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FG6*dt2);
 PA6_dt2 = PA6_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FA6*dt2);

 PC5_dt3 = PC5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FC5*dt3);
 PD5_dt3 = PD5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FD5*dt3);
 PG5_dt3 = PG5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FG5*dt3);
 PA5_dt3 = PA5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FA5*dt3); 
 PE5_dt3 = PE5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FE5*dt3); 
 PF5_dt3 = PF5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FF5*dt3);
 PB5_dt3 = PB5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FB5*dt3);
 PC6_dt3 = PC6_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FC6*dt3);
 PD6_dt3 = PD6_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FD6*dt3);
 PE6_dt3 = PE6_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FE6*dt3);
 PF6_dt3 = PF6_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FF6*dt3);
 PG6_dt3 = PG6_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FG6*dt3);
 PA6_dt3 = PA6_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FA6*dt3);
 
 PC5_dt4 = PC5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FC5*dt4);
 PD5_dt4 = PD5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FD5*dt4);
 PG5_dt4 = PG5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FG5*dt4);
 PA5_dt4 = PA5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FA5*dt4); 
 PE5_dt4 = PE5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FE5*dt4); 
 PF5_dt4 = PF5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FF5*dt4);
 PB5_dt4 = PB5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FB5*dt4);
 PC6_dt4 = PC6_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FC6*dt4);
 PD6_dt4 = PD6_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FD6*dt4);
 PE6_dt4 = PE6_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FE6*dt4);
 PF6_dt4 = PF6_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FF6*dt4);
 PG6_dt4 = PG6_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FG6*dt4);
 PA6_dt4 = PA6_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FA6*dt4);
end

y = [PC5_dt1 PD5_dt1 PF5_dt3 PG5_dt1 PA5_dt1 PE5_dt1 PD5_dt1 PC5_dt1 PD5_dt3 PF5_dt1 PG5_dt1 PA5_dt3 PC6_dt1 PD6_dt1 PF5_dt1...
    PG5_dt2 PA5_dt2 PB5_dt2 PA5_dt3 PA5_dt1 PC6_dt1 PD6_dt3 PC6_dt1 PD6_dt3 PD5_dt1 PA5_dt1 PG5_dt3 PF5_dt1 PG5_dt1 PA5_dt1...
    PC6_dt1 PD5_dt1 PC5_dt3 PD5_dt1  PE5_dt1 PG5_dt1 PA5_dt1 PD5_dt1 PF5_dt3 PC6_dt2 PC6_dt2 PD6_dt2 PF6_dt2 PE6_dt2 PD6_dt2...
    PC6_dt2 PD6_dt3 PC6_dt2 PC6_dt2 PD6_dt2 PF6_dt2 PE6_dt2 PD6_dt2 PC6_dt1 PA5_dt1 PG5_dt1 PA5_dt3 PA5_dt1 PC6_dt1 PD6_dt2...
    PC6_dt1 PD6_dt2 PD5_dt1 PA5_dt1 PG5_dt3 PF5_dt1 PG5_dt1 PA5_dt1 PC6_dt1 PD5_dt1 PC5_dt3 PD5_dt1 PE5_dt1 PG5_dt1 PA5_dt1 PD5_dt2 PF5_dt1];
subplot(3,1,1);
plot(PC5_dt1);
subplot(3,1,2);
plot(PC5_dt2);
subplot(3,1,3);
plot(y);
player=audioplayer(y,Fs);
play(player);