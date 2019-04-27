close all
clc
clear all

%Homomorphic Filtering 

d=10;
order=2;
I= imread('Test.jpg');
subplot(2,3,1)

imshow(I); title('Original Image');

im=double(I);
subplot(2,3,2)
imshow(im./255); title('Filtered Image');

[r c]=size(im);
homofil(im,d,r,c,order);

function homofil(im, d, r,c, n)
A=zeros(r,c);
for i=1:r
    for j=1:c
        A(i,j)=(((i-r/2).^2+(j-c/2).^2)).^(.5);
        H(i,j)=1/(1+((d/A(i,j))^(2*n)));
    end
end
alphaL=.0999;
aplhaH=1.01;
H=((aplhaH-alphaL).*H)+alphaL;
H=1-H;
im_l=log2(1+im);
im_f=fft2(im_l);
im_nf=H.*im_f;
im_n=abs(ifft2(im_nf));
im_e=exp(im_n);
subplot(2,3,3)
imshow((im_e),[]) title('Expo Image');

%Edge Detection.
close all;
clear all;
I = imread('a.bmp');
subplot(2,3,4)

imshow(I); title('Original Image');
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
subplot(2,3,5)
imshow(BW1) title('Sobel Image');
subplot(2,3,6)
imshow(BW2) title('Canny Image');

