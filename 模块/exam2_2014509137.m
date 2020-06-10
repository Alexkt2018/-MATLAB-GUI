clear all;
close all;
clc;
I=imread('G:\red.jpg');
imshow(I);
whos
%imhist(I)
I_Gray=rgb2gray(I);
imhist(I_Gray),title('rgb2gray�ĻҶ�ֱ��ͼ');
I_Bw=im2bw(I,140/255);%��ֵ�ָ�Ҫ��
figure;
subplot(1,3,1),imshow(I),title('ԭͼ');
subplot(1,3,2),imshow(I_Gray),title('�Ҷ�ͼ');
subplot(1,3,3),imshow(I_Bw),title('��ֵͼ');
I_R=I(:,:,1);
I_G=I(:,:,2);
I_B=I(:,:,3);
%R-B
I_RB=I_R-I_B;
figure,imhist(I_RB),title('Rͨ����Bͨ���ĻҶ�ֱ��ͼ');
I_Bw2=im2bw(I_RB,50/255);
I_Bw2Fill=imfill(I_Bw2,'holes');
figure;
subplot(1,3,1),imshow(I_RB),title('R-B');
subplot(1,3,2),imshow(I_Bw2),title('��ֵͼ');
subplot(1,3,3),imshow(I_Bw2Fill),title('����');