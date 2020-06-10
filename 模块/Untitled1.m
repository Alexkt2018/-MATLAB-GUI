I=imread('G:\rose.jpg');
I=rgb2gray(I);
[width,height]=size(I)
figure,imshow(I);
figure,imhist(I);
T1=80;
for i=1:width
    for j=1:height
        if (I(i,j))<T1
            BW1(i,j)=0;
        else
            BW1(i,j)=1;
        end
    end
end
figure,imshow(BW1);
T2=graythresh(I)
BW2=im2bw(I,T2);
figure,imshow(BW2);
f=double(I);
T=(min(f(:))+max(f(:)))/2;
done=false;
i=0;
while ~done
    r1=find(f<=T);
    r2=find(f>T);
    Tnew=(mean(f(r1))+mean(f(r2)))/2
    done=abs(Tnew-T)<1
    T=Tnew;
    i=i+1;
end
f(r1)=0;
f(r2)=1;
figure,imshow(f);