[ya,Fsa] = audioread('E:\XLTHS\Speech Processing\MySelf/a.wav');
%subplot(5, 1, 1);
plot(ya);
title('Speech signal waveform a');
ylabel('Bien do (Hz)');
n1a = 1036;
n2a = 1217;
dtna = n2a - n1a;
dtta = dtna*(1/Fsa);
F0a = 1/dtta;


figure(2);
[ye,Fse] = audioread('E:\XLTHS\Speech Processing\MySelf/e.wav');
plot(ye);
title('Speech signal waveform e');
ylabel('Bien do (Hz)');
% pause(0.7);  %ham delay tin hieu
% sound(ye,Fse);
n1e = 1033;
n2e = 1173;
dtne = n2e - n1e;
dtte = dtne*(1/Fse);
F0e = 1/dtte;

figure(3);
[yi,Fsi] = audioread('E:\XLTHS\Speech Processing\MySelf/i.wav');
plot(yi);
title('Speech signal waveform i');
ylabel('Bien do (Hz)');
% pause(0.7);  %ham delay tin hieu
% sound(yi,Fsi);
n1i = 1080;
n2i = 1195;
dtni = n2i - n1i;
dtti = dtni*(1/Fsi);
F0i = 1/dtti;

figure(4);
[yo,Fso] = audioread('E:\XLTHS\Speech Processing\MySelf/o.wav');
plot(yo);
title('Speech signal waveform o');
ylabel('Bien do (Hz)');
% pause(0.7);  %ham delay tin hieu
% sound(yo,Fso);
n1o = 1032;
n2o = 1176;
dtno = n2o - n1o;
dtto = dtno*(1/Fso);
F0o = 1/dtto;

figure(5);
[yu,Fsu] = audioread('E:\XLTHS\Speech Processing\MySelf/u.wav');
plot(yu);
title('Speech signal waveform u');
ylabel('Bien do (Hz)');
% pause(0.7);  %ham delay tin hieu
% sound(yu,Fsu);
n1u = 1139;
n2u = 1262;
dtnu = n2u - n1u;
dttu = dtnu*(1/Fsu);
F0u = 1/dttu;

%gia tri trung binh
F0_Mean = (F0a + F0e + F0i + F0o + F0u)/5;

%do lech chuan
F0_sdt = ((1/4)*((F0a - F0_Mean)^2 + (F0e - F0_Mean)^2 + (F0i - F0_Mean)^2 + (F0o - F0_Mean)^2 +(F0u - F0_Mean)^2))^(1/2);
