fs = 44100;
freqHz = 440.00;

M=fs*2;
% M controls frequency
alpha=0.5;

N = fs/freqHz*0.5;
N = floor(N);

x =2*(rand(1,N)-0.5);
subplot(2,1,1);
plot(x);

% X controls timbre

y = [zeros(1,N+1)];

if M > length(x)
diff = M - length(x);
x = [x zeros(1,diff)];
end


out1=0;
signal = 0;
lengthYOffset = length(y)-1;

for i=1:M
out1 = x(i) + alpha*(y(N) + y(N+1)); % filter signal
y = [out1, y(1:lengthYOffset)]; % update delay line
signal = [signal out1];
end

subplot(2,1,2);
plot(signal);
player=audioplayer(signal,fs);
play(player);