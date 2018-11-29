close all;
clear all;

[y,Fs]=audioread('E:\XLTHS\BT/main_o.wav'); 
[f0,idx] = pitch(y,Fs);
