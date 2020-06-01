clc;
Fs = 22050;
Ts = 1/Fs;

FC4 = 261.63;
FD4 = 293.66;
FE4 = 329.63;
FF4 = 349.23;
FG4 = 392.00;
FA4 = 440.00;
FB4 = 493.88;
FC5 = 523.25;
FD5 = 587.33;
FE5 = 659.25;
FF5 = 698.46;
FG5 = 783.99;
FA5 = 880.00;

d1 = 0.5;
d2 = 0.4; 
d3 = 1.5;
d4 = 1;
 
dt1=Ts:Ts:d1;
dt2=Ts:Ts:d2;
dt3=Ts:Ts:d3;
dt4=Ts:Ts:d4;

PC4_dt2 = zeros(1,Fs*d2);
PA4_dt2 = zeros(1,Fs*d2);
PE4_dt2 = zeros(1,Fs*d2);
PF4_dt2 = zeros(1,Fs*d2);
PB4_dt2 = zeros(1,Fs*d2);
PD4_dt2 = zeros(1,Fs*d2);
PG4_dt2 = zeros(1,Fs*d2);
PC5_dt2 = zeros(1,Fs*d2);
PD5_dt2 = zeros(1,Fs*d2);
PE5_dt2 = zeros(1,Fs*d2);
PF5_dt2 = zeros(1,Fs*d2);
PG5_dt2 = zeros(1,Fs*d2);
PA5_dt2 = zeros(1,Fs*d2);

PC4_dt1 = zeros(1,Fs*d1);
PA4_dt1 = zeros(1,Fs*d1);
PE4_dt1 = zeros(1,Fs*d1);
PF4_dt1 = zeros(1,Fs*d1);
PB4_dt1 = zeros(1,Fs*d1);
PD4_dt1 = zeros(1,Fs*d1);
PG4_dt1 = zeros(1,Fs*d1);
PC5_dt1 = zeros(1,Fs*d1);
PD5_dt1 = zeros(1,Fs*d1);
PE5_dt1 = zeros(1,Fs*d1);
PF5_dt1 = zeros(1,Fs*d1);
PG5_dt1 = zeros(1,Fs*d1);
PA5_dt1 = zeros(1,Fs*d1);

PC4_dt3 = zeros(1,Fs*d3);
PA4_dt3 = zeros(1,Fs*d3);
PE4_dt3 = zeros(1,Fs*d3);
PF4_dt3 = zeros(1,Fs*d3);
PB4_dt3 = zeros(1,Fs*d3);
PD4_dt3 = zeros(1,Fs*d3);
PG4_dt3 = zeros(1,Fs*d3);
PC5_dt3 = zeros(1,Fs*d3);
PD5_dt3 = zeros(1,Fs*d3);
PE5_dt3 = zeros(1,Fs*d3);
PF5_dt3 = zeros(1,Fs*d3);
PG5_dt3 = zeros(1,Fs*d3);
PA5_dt3 = zeros(1,Fs*d3);

PC4_dt4 = zeros(1,Fs*d4);
PA4_dt4 = zeros(1,Fs*d4);
PE4_dt4 = zeros(1,Fs*d4);
PF4_dt4 = zeros(1,Fs*d4);
PB4_dt4 = zeros(1,Fs*d4);
PD4_dt4 = zeros(1,Fs*d4);
PG4_dt4 = zeros(1,Fs*d4);
PC5_dt4 = zeros(1,Fs*d4);
PD5_dt4 = zeros(1,Fs*d4);
PE5_dt4 = zeros(1,Fs*d4);
PF5_dt4 = zeros(1,Fs*d4);
PG5_dt4 = zeros(1,Fs*d4);
PA5_dt4 = zeros(1,Fs*d4);

Amplitude = [1 0.1 0.33 0.06 0.05 0.045 0 0.02 0.005 0.005 0 0.005 0.01];

for n=1:length(Amplitude);

 PC4_dt1 = PC4_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FC4*dt1);
 PD4_dt1 = PD4_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FD4*dt1);
 PG4_dt1 = PG4_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FG4*dt1);
 PA4_dt1 = PA4_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FA4*dt1); 
 PE4_dt1 = PE4_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FE4*dt1); 
 PF4_dt1 = PF4_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FF4*dt1);
 PB4_dt1 = PB4_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FB4*dt1);
 PC5_dt1 = PC5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FC5*dt1);
 PD5_dt1 = PD5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FD5*dt1);
 PE5_dt1 = PE5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FE5*dt1);
 PF5_dt1 = PF5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FF5*dt1);
 PG5_dt1 = PG5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FG5*dt1);
 PA5_dt1 = PA5_dt1 + Amplitude(n)*exp((-1)*dt1*3).*cos(2*pi*n*FA5*dt1);
 
 PC4_dt2 = PC4_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FC4*dt2);
 PD4_dt2 = PD4_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FD4*dt2);
 PG4_dt2 = PG4_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FG4*dt2);
 PA4_dt2 = PA4_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FA4*dt2); 
 PE4_dt2 = PE4_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FE4*dt2); 
 PF4_dt2 = PF4_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FF4*dt2);
 PB4_dt2 = PB4_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FB4*dt2);
 PC5_dt2 = PC5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FC5*dt2);
 PD5_dt2 = PD5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FD5*dt2);
 PE5_dt2 = PE5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FE5*dt2);
 PF5_dt2 = PF5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FF5*dt2);
 PG5_dt2 = PG5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FG5*dt2);
 PA5_dt2 = PA5_dt2 + Amplitude(n)*exp((-1)*dt2*3).*cos(2*pi*n*FA5*dt2);

 PC4_dt3 = PC4_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FC4*dt3);
 PD4_dt3 = PD4_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FD4*dt3);
 PG4_dt3 = PG4_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FG4*dt3);
 PA4_dt3 = PA4_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FA4*dt3); 
 PE4_dt3 = PE4_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FE4*dt3); 
 PF4_dt3 = PF4_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FF4*dt3);
 PB4_dt3 = PB4_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FB4*dt3);
 PC5_dt3 = PC5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FC5*dt3);
 PD5_dt3 = PD5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FD5*dt3);
 PE5_dt3 = PE5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FE5*dt3);
 PF5_dt3 = PF5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FF5*dt3);
 PG5_dt3 = PG5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FG5*dt3);
 PA5_dt3 = PA5_dt3 + Amplitude(n)*exp((-1)*dt3*3).*cos(2*pi*n*FA5*dt3);
 
 PC4_dt4 = PC4_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FC4*dt4);
 PD4_dt4 = PD4_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FD4*dt4);
 PG4_dt4 = PG4_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FG4*dt4);
 PA4_dt4 = PA4_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FA4*dt4); 
 PE4_dt4 = PE4_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FE4*dt4); 
 PF4_dt4 = PF4_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FF4*dt4);
 PB4_dt4 = PB4_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FB4*dt4);
 PC5_dt4 = PC5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FC5*dt4);
 PD5_dt4 = PD5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FD5*dt4);
 PE5_dt4 = PE5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FE5*dt4);
 PF5_dt4 = PF5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FF5*dt4);
 PG5_dt4 = PG5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FG5*dt4);
 PA5_dt4 = PA5_dt4 + Amplitude(n)*exp((-1)*dt4*3).*cos(2*pi*n*FA5*dt4);
end

y = [PC4_dt1 PD4_dt1 PF4_dt3 PG4_dt1 PA4_dt1 PE4_dt1 PD4_dt1 PC4_dt1 PD4_dt3 PF4_dt1 PG4_dt1 PA4_dt3 PC5_dt1 PD5_dt1 PF4_dt1...
    PG4_dt2 PA4_dt2 PB4_dt2 PA4_dt3 PA4_dt1 PC5_dt1 PD5_dt3 PC5_dt1 PD5_dt3 PD4_dt1 PA4_dt1 PG4_dt3 PF4_dt1 PG4_dt1 PA4_dt1...
    PC5_dt1 PD4_dt1 PC4_dt3 PD4_dt1  PE4_dt1 PG4_dt1 PA4_dt1 PD4_dt1 PF4_dt3 PC5_dt2 PC5_dt2 PD5_dt2 PF5_dt2 PE5_dt2 PD5_dt2...
    PC5_dt2 PD5_dt3 PC5_dt2 PC5_dt2 PD5_dt2 PF5_dt2 PE5_dt2 PD5_dt2 PC5_dt1 PA4_dt1 PG4_dt1 PA4_dt3 PA4_dt1 PC5_dt1 PD5_dt2...
    PC5_dt1 PD5_dt2 PD4_dt1 PA4_dt1 PG4_dt3 PF4_dt1 PG4_dt1 PA4_dt1 PC5_dt1 PD4_dt1 PC4_dt3 PD4_dt1 PE4_dt1 PG4_dt1 PA4_dt1 PD4_dt2 PF4_dt1];
subplot(3,1,1);
plot(PC5_dt1);
subplot(3,1,2);
plot(PC5_dt2);
subplot(3,1,3);
plot(y);
player=audioplayer(y,Fs);
play(player);