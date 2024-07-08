i = imread("pout.tif");
subplot(2,2,1);
imshow(i);
title("original image")
subplot(2,2,2);
imhist(i);
b = histeq(i);
title("histogram")
subplot(2,2,3);
imshow(b);
title("enhanced")
subplot(2,2,4);
imhist(b);
title("histogram")

