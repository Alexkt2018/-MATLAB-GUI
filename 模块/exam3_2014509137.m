clear all;
close all;
clc;
I=imread('G:\red.jpg');
J=immultiply(I,1.2);
K=immultiply(I,2);
subplot(1,3,1),imshow(I);
subplot(1,3,2),imshow(J);
subplot(1,3,3),imshow(K);