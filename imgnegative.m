positiveImage = imread('cameraman.tif');
negativeImage = 255 - positiveImage;
subplot(2,1,1)
imshow(positiveImage)
title("Positive Image")
subplot(2,1,2)
imshow(negativeImage)
title("Negative Image")
