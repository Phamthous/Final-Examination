
Fs=44100;

m0=Fs*0.6;
m1=Fs*1.5;
m2=Fs*0.4;

x=1;

a=2;
a1=2;
a2=2;

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
FB5 = 987.77;

PC4=zeros(1,m0);
PD4=zeros(1,m0);
PE4=zeros(1,m0);
PF4=zeros(1,m0);
PG4=zeros(1,m0);
PA4=zeros(1,m0);
PB4=zeros(1,m0);

PC5=zeros(1,m0);
PD5=zeros(1,m0);
PE5=zeros(1,m0);
PF5=zeros(1,m0);
PG5=zeros(1,m0);
PA5=zeros(1,m0);
PB5=zeros(1,m0);

P1C4=zeros(1,m1);
P1D4=zeros(1,m1);
P1E4=zeros(1,m1);
P1F4=zeros(1,m1);
P1G4=zeros(1,m1);
P1A4=zeros(1,m1);
P1B4=zeros(1,m1);

P1C5=zeros(1,m1);
P1D5=zeros(1,m1);
P1E5=zeros(1,m1);
P1F5=zeros(1,m1);
P1G5=zeros(1,m1);
P1A5=zeros(1,m1);
P1B5=zeros(1,m1);

P2C4=zeros(1,m2);
P2D4=zeros(1,m2);
P2E4=zeros(1,m2);
P2F4=zeros(1,m2);
P2G4=zeros(1,m2);
P2A4=zeros(1,m2);
P2B4=zeros(1,m2);

P2C5=zeros(1,m2);
P2D5=zeros(1,m2);
P2E5=zeros(1,m2);
P2F5=zeros(1,m2);
P2G5=zeros(1,m2);
P2A5=zeros(1,m2);
P2B5=zeros(1,m2);

n0=int32(Fs/FC4*2*x);
n1=int32(Fs/FD4*2*x);
n2=int32(Fs/FE4*2*x);
n3=int32(Fs/FF4*2*x);
n4=int32(Fs/FG4*2*x);
n5=int32(Fs/FA4*2*x);
n6=int32(Fs/FB4*2*x);
n7=int32(Fs/FC5*2*x);
n8=int32(Fs/FD5*2*x);
n9=int32(Fs/FE5*2*x);
n10=int32(Fs/FF5*2*x);
n11=int32(Fs/FG5*2*x);
n12=int32(Fs/FA5*2*x);
n13=int32(Fs/FB5*2*x);

b0=a*(rand(1,n0)-0.5);
b1=a*(rand(1,n1)-0.5);
b2=a*(rand(1,n2)-0.5);
b3=a*(rand(1,n3)-0.5);
b4=a*(rand(1,n4)-0.5);
b5=a*(rand(1,n5)-0.5);
b6=a*(rand(1,n6)-0.5);
b7=a*(rand(1,n0)-0.5);
b8=a*(rand(1,n1)-0.5);
b9=a*(rand(1,n2)-0.5);
b10=a*(rand(1,n3)-0.5);
b11=a*(rand(1,n4)-0.5);
b12=a*(rand(1,n5)-0.5);
b13=a*(rand(1,n6)-0.5);

b01=a1*(rand(1,n0)-0.5);
b112=a1*(rand(1,n1)-0.5);
b21=a1*(rand(1,n2)-0.5);
b31=a1*(rand(1,n3)-0.5);
b41=a1*(rand(1,n4)-0.5);
b51=a1*(rand(1,n5)-0.5);
b61=a1*(rand(1,n6)-0.5);
b71=a1*(rand(1,n0)-0.5);
b81=a1*(rand(1,n1)-0.5);
b91=a1*(rand(1,n2)-0.5);
b101=a1*(rand(1,n3)-0.5);
b111=a1*(rand(1,n4)-0.5);
b121=a1*(rand(1,n5)-0.5);
b131=a1*(rand(1,n6)-0.5);

b013=a2*(rand(1,n0)-0.5);
b114=a2*(rand(1,n1)-0.5);
b213=a2*(rand(1,n2)-0.5);
b313=a2*(rand(1,n3)-0.5);
b413=a2*(rand(1,n4)-0.5);
b513=a2*(rand(1,n5)-0.5);
b613=a2*(rand(1,n6)-0.5);
b713=a2*(rand(1,n0)-0.5);
b813=a2*(rand(1,n1)-0.5);
b913=a2*(rand(1,n2)-0.5);
b103=a2*(rand(1,n3)-0.5);
b113=a2*(rand(1,n4)-0.5);
b123=a2*(rand(1,n5)-0.5);
b133=a2*(rand(1,n6)-0.5);

for i=1:m0
    b0(mod(i-1,n0)+1)=0.5*((b0(mod(i-1,n0)+1))+ b0(mod(i,n0)+1));
    PC4(i)=b0(mod(i-1,n0)+1);
    
    b1(mod(i-1,n1)+1)=0.5*((b1(mod(i-1,n1)+1))+ b1(mod(i,n1)+1));
    PD4(i)=b1(mod(i-1,n1)+1);
    
    b2(mod(i-1,n2)+1)=0.5*((b2(mod(i-1,n2)+1))+ b2(mod(i,n2)+1));
    PE4(i)=b2(mod(i-1,n2)+1);
    
    b3(mod(i-1,n3)+1)=0.5*((b3(mod(i-1,n3)+1))+ b3(mod(i,n3)+1));
    PF4(i)=b3(mod(i-1,n3)+1);
    
    b4(mod(i-1,n4)+1)=0.5*((b4(mod(i-1,n4)+1))+ b4(mod(i,n4)+1));
    PG4(i)=b4(mod(i-1,n4)+1);
    
    b5(mod(i-1,n5)+1)=0.5*((b5(mod(i-1,n5)+1))+ b5(mod(i,n5)+1));
    PA4(i)=b5(mod(i-1,n5)+1);
    
    b6(mod(i-1,n6)+1)=0.5*((b6(mod(i-1,n6)+1))+ b6(mod(i,n6)+1));
    PB4(i)=b6(mod(i-1,n6)+1);
    
    b7(mod(i-1,n7)+1)=0.5*((b7(mod(i-1,n7)+1))+ b7(mod(i,n7)+1));
    PC5(i)=b7(mod(i-1,n7)+1);
    
    b8(mod(i-1,n8)+1)=0.5*((b8(mod(i-1,n8)+1))+ b8(mod(i,n8)+1));
    PD5(i)=b8(mod(i-1,n8)+1);
    
    b9(mod(i-1,n9)+1)=0.5*((b9(mod(i-1,n9)+1))+ b9(mod(i,n9)+1));
    PE5(i)=b9(mod(i-1,n9)+1);
    
    b10(mod(i-1,n10)+1)=0.5*((b10(mod(i-1,n10)+1))+ b10(mod(i,n10)+1));
    PF5(i)=b10(mod(i-1,n10)+1);
    
    b11(mod(i-1,n11)+1)=0.5*((b11(mod(i-1,n11)+1))+ b11(mod(i,n11)+1));
    PG5(i)=b11(mod(i-1,n11)+1);
    
    b12(mod(i-1,n12)+1)=0.5*((b12(mod(i-1,n12)+1))+ b12(mod(i,n12)+1));
    PA5(i)=b12(mod(i-1,n12)+1);
    
    b13(mod(i-1,n13)+1)=0.5*((b13(mod(i-1,n13)+1))+ b13(mod(i,n13)+1));
    PB5(i)=b13(mod(i-1,n13)+1);
end

for i=1:m1
    b01(mod(i-1,n0)+1)=0.5*((b01(mod(i-1,n0)+1))+ b01(mod(i,n0)+1));
    P1C4(i)=b01(mod(i-1,n0)+1);
    
    b112(mod(i-1,n1)+1)=0.5*((b112(mod(i-1,n1)+1))+ b112(mod(i,n1)+1));
    P1D4(i)=b112(mod(i-1,n1)+1);
    
    b21(mod(i-1,n2)+1)=0.5*((b21(mod(i-1,n2)+1))+ b21(mod(i,n2)+1));
    P1E4(i)=b21(mod(i-1,n2)+1);
    
    b31(mod(i-1,n3)+1)=0.5*((b31(mod(i-1,n3)+1))+ b31(mod(i,n3)+1));
    P1F4(i)=b31(mod(i-1,n3)+1);
    
    b41(mod(i-1,n4)+1)=0.5*((b41(mod(i-1,n4)+1))+ b41(mod(i,n4)+1));
    P1G4(i)=b41(mod(i-1,n4)+1);
    
    b51(mod(i-1,n5)+1)=0.5*((b51(mod(i-1,n5)+1))+ b51(mod(i,n5)+1));
    P1A4(i)=b51(mod(i-1,n5)+1);
    
    b61(mod(i-1,n6)+1)=0.5*((b61(mod(i-1,n6)+1))+ b61(mod(i,n6)+1));
    P1B4(i)=b61(mod(i-1,n6)+1);
    
    b71(mod(i-1,n7)+1)=0.5*((b71(mod(i-1,n7)+1))+ b71(mod(i,n7)+1));
    P1C5(i)=b71(mod(i-1,n7)+1);
    
    b81(mod(i-1,n8)+1)=0.5*((b81(mod(i-1,n8)+1))+ b81(mod(i,n8)+1));
    P1D5(i)=b81(mod(i-1,n8)+1);
    
    b91(mod(i-1,n9)+1)=0.5*((b91(mod(i-1,n9)+1))+ b91(mod(i,n9)+1));
    P1E5(i)=b91(mod(i-1,n9)+1);
    
    b101(mod(i-1,n10)+1)=0.5*((b101(mod(i-1,n10)+1))+ b101(mod(i,n10)+1));
    P1F5(i)=b101(mod(i-1,n10)+1);
    
    b111(mod(i-1,n11)+1)=0.5*((b111(mod(i-1,n11)+1))+ b111(mod(i,n11)+1));
    P1G5(i)=b111(mod(i-1,n11)+1);
    
    b121(mod(i-1,n12)+1)=0.5*((b121(mod(i-1,n12)+1))+ b121(mod(i,n12)+1));
    P1A5(i)=b121(mod(i-1,n12)+1);
    
    b131(mod(i-1,n13)+1)=0.5*((b131(mod(i-1,n13)+1))+ b131(mod(i,n13)+1));
    P1B5(i)=b131(mod(i-1,n13)+1);
end

for i=1:m2
    b013(mod(i-1,n0)+1)=0.5*((b013(mod(i-1,n0)+1))+ b013(mod(i,n0)+1));
    P2C4(i)=b013(mod(i-1,n0)+1);
    
    b114(mod(i-1,n1)+1)=0.5*((b114(mod(i-1,n1)+1))+ b114(mod(i,n1)+1));
    P2D4(i)=b114(mod(i-1,n1)+1);
    
    b213(mod(i-1,n2)+1)=0.5*((b213(mod(i-1,n2)+1))+ b213(mod(i,n2)+1));
    P2E4(i)=b213(mod(i-1,n2)+1);
    
    b313(mod(i-1,n3)+1)=0.5*((b313(mod(i-1,n3)+1))+ b313(mod(i,n3)+1));
    P2F4(i)=b313(mod(i-1,n3)+1);
    
    b413(mod(i-1,n4)+1)=0.5*((b413(mod(i-1,n4)+1))+ b413(mod(i,n4)+1));
    P2G4(i)=b413(mod(i-1,n4)+1);
    
    b513(mod(i-1,n5)+1)=0.5*((b513(mod(i-1,n5)+1))+ b513(mod(i,n5)+1));
    P2A4(i)=b513(mod(i-1,n5)+1);
    
    b613(mod(i-1,n6)+1)=0.5*((b613(mod(i-1,n6)+1))+ b613(mod(i,n6)+1));
    P2B4(i)=b613(mod(i-1,n6)+1);
    
    b713(mod(i-1,n7)+1)=0.5*((b713(mod(i-1,n7)+1))+ b713(mod(i,n7)+1));
    P2C5(i)=b713(mod(i-1,n7)+1);
    
    b813(mod(i-1,n8)+1)=0.5*((b813(mod(i-1,n8)+1))+ b813(mod(i,n8)+1));
    P2D5(i)=b813(mod(i-1,n8)+1);
    
    b913(mod(i-1,n9)+1)=0.5*((b913(mod(i-1,n9)+1))+ b913(mod(i,n9)+1));
    P2E5(i)=b913(mod(i-1,n9)+1);
    
    b103(mod(i-1,n10)+1)=0.5*((b103(mod(i-1,n10)+1))+ b103(mod(i,n10)+1));
    P2F5(i)=b103(mod(i-1,n10)+1);
    
    b113(mod(i-1,n11)+1)=0.5*((b113(mod(i-1,n11)+1))+ b113(mod(i,n11)+1));
    P2G5(i)=b113(mod(i-1,n11)+1);
    
    b123(mod(i-1,n12)+1)=0.5*((b123(mod(i-1,n12)+1))+ b123(mod(i,n12)+1));
    P2A5(i)=b123(mod(i-1,n12)+1);
    
    b133(mod(i-1,n13)+1)=0.5*((b133(mod(i-1,n13)+1))+ b133(mod(i,n13)+1));
    P2B5(i)=b133(mod(i-1,n13)+1);
end

y= [PC4 PD4 P1F4 PG4 PA4 PE4 PD4 PC4 P1D4 PF4 PG4 P1A4 PC5 PD5 PF4...
   P2G4 P2A4 P2B4 P1A4 PA4 PC5 P1D5 PC5 P1D5 PD4 PA4 P1G4 PF4 PG4 PA4...
   PC5 PD4 P1C4 PD4 PE4 PG4 PA4 PD4 P1F4 P2C5 P2C5 P2D5 P2F5 P2E5 P2D5...
   P2C5 P1D5 P2C5 P2C5 P2D5 P2F5 P2E5 P2D5 PC5 PA4 PG4 P1A4 PA4 PC5 P2D5...
   PC5 P2D5 PD4 PA4 P1G4 PF4 PG4 PA4 PC5 PD4 P1C4 PD4 PE4 PG4 PA4 P2D4 PF4];

subplot(3,1,1);
plot(PC4);
subplot(3,1,2);
plot(PA4);
subplot(3,1,3);
plot(y);
player=audioplayer(y,Fs);
play(player);

