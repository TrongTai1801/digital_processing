close all;
clear all;

Fs = 44100;
[yo,Fo]=audioread('E:\XLTHS\BT/main_i.wav');
t = linspace(0,length(yo)/Fo,length(yo));
subplot(2,1,1);
plot(t,yo);
findpeaks(yo,t);
xlabel('time(s)')
title('Time domain');

subplot(2,1,2);
nfft = length(yo);
nfft2 = 2.^nextpow2(nfft);

fy = fft(yo, nfft2);
fy = fy(1:nfft2/2);

xfft = Fo.*(0:nfft2/2 - 1)/nfft2;

[pks,frqs] = findpeaks(abs(fy/max(fy)), xfft);
plot(xfft, abs(fy/max(fy)));
xlabel('frequency (Hz)')
title('Frequency domain'); 

f_max = 0;
for i=1:1:length(frqs)
    if((frqs(i) >= 80) && (frqs(i) <= 400) && (frqs(i) > f_max))
        f_max = frqs(i);
    end
end

foo = 0;
for i=1:1:length(frqs)
    if((frqs(i) >= 80) && (frqs(i) <= 400))
        if ((mod(f_max, frqs(i))/frqs(i)) < 0.3)
            foo = frqs(i);
            break;
        end
    end
end