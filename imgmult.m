positiveImage = imread('cameraman.tif');
negativeImage = 255 - positiveImage;
subplot(2,1,1)
title("Positive Image")
imshow(positiveImage)
subplot(2,1,2)
title("Negative Image")
imshow(negativeImage)

