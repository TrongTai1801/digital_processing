close all;
clear all;

[yo,Fo]=audioread('E:\XLTHS\BT\main/main_o.wav');
t = linspace(0,length(yo)/Fo,length(yo));
subplot(2,1,1);
plot(t,yo);
findpeaks(yo,t);
xlabel('time(s)')
title('Time domain');

nfft = 1024;
f =  linspace(0, Fo, nfft);
g = abs(fft(yo, nfft));
subplot(2,1,2);
plot(f(1:nfft/2), g(1:nfft/2));
xlabel('frequency (Hz)')
title('Frequency domain');

[pks,locs] = findpeaks(g(1:nfft/2),f(1:nfft/2));
findpeaks(g(1:nfft/2),f(1:nfft/2));

f_max = 0;
for i=1:1:length(locs)
    if((locs(i) >= 80) && (locs(i) <= 400) && (locs(i) > f_max))
        f_max = locs(i);
    end
end

foo = 0;
for i=1:1:length(locs)
    if((locs(i) >= 80) && (locs(i) <= 400))
        if ((mod(f_max, locs(i))/locs(i)) == 0)
            foo = locs(i);
            break;
        end
    end
end