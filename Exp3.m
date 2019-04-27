w = imread('Test.jpg');subplot(2,2,1)
imshow(w) title('Original Image');
subplot(2,2,2)
b = w(:,:,1);
c = w(:,:,2);
d = w(:,:,3);
s = zeros(size(w, 1), size(w, 2));
just_red = cat(3,b, s, s)
just_green = cat(3,s,c,s)
just_blue = cat(3,s,s,d)
imshow(just_red) title( RED Colored Image');
subplot(2,2,3)
imshow(just_blue) title(' BLUE Colored Image');
subplot(2,2,4)
imshow(just_green) title(' GREEN Colored Image');
