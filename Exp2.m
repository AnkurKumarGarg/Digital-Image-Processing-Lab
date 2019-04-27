w = imread('Test.jpg');
subplot(2,2,1);
imshow(w) title(' Original Colored Image');
subplot(2,2,2)
y = rgb2gray(w);
imshow(y) title(' Gray Scale Image');
z = imcomplement(w);
subplot(2,2,3)
imshow(z) title(' Imcomplement Image');
c = size(w);
for i = 1:c(1)
    for j = 1:c(2)
        for k= 1:c(3)
            w(i,j,k) = 255 - w(i,j,k);
        end
    end
end
subplot(2,2,4)
imshow(w) title('Negative Image');
