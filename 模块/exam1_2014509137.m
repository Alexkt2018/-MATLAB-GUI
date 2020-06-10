clear all;
close all;
clc;
I=imread('G:\red.jpg');
J=imnoise(I,'gaussian',0,0.02);
subplot(1,2,1),imshow(I);
subplot(1,2,2),imshow(J);
K=zeros(242,308);
for i=1:100
    J=imnoise(I,'gaussian',0,0.02);
    J1=im2double(J);
    K=K+J1;
end
K=K/100;
figure;imshow(K);