clear all;
close all;
clc;
img=rgb2gray(imread('G:\rose.jpg'));
figure;imshow(img);
img_noise=double(imnoise(img,'salt & pepper',0.06));
figure;imshow(img_noise,[]);
img_smoothed=imfilter(img_noise,fspecial('average',5));
figure;imshow(img_smoothed,[]);
