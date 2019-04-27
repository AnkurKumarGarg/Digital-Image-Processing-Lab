a = imread('Test.jpg');
i = rgb2gray(a)
subplot(2,2,1)
imshow(a) title('Real Image');
subplot(2,2,2)
imshow(i) title('Grayscale Image');
w = im2bw(i)
subplot(2,2,3)
imshow(w) title(' Binary Image');
subplot(2,2,4)
h=imhist(i)
imshow(h) title(' Histogram ');
