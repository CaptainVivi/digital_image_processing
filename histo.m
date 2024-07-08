subplot(3,1,1)
a = imread('cameraman.tif');
imshow(a);
title('picture');
subplot(3,1,2)
imhist(a);
title('histogram using built in function');
z = zeros(1, 256);
for i = 1:256
 for j = 1:256
 pixel_value = a(i, j);
 z(pixel_value + 1) = z(pixel_value + 1) + 1;
 end
end
subplot(3,1,3)
bar(z);
xlabel('Pixel Value');
ylabel('Frequency');
title('Histogram without using builtin function');



