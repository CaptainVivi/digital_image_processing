I = imread('pout.tif');

figure
subplot(1, 2, 1),
imshow(I)
title('Original Image');
J = imadjust(I, stretchlim(I), []);
subplot(1, 2, 2),
imshow(J)
title('Adjusted Image');