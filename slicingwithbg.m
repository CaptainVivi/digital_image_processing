% open the image coins.png
I=imread('coins.png');
%Use imtool with the matrix containing the image grey level to identify the range of grey levels within the coins.
% imtool(I)
% Most pixels are between 100 and 240
MinPixel = 90,  MaxPixel =255
% to improve use median filter on the background only to remove light grey
% pixels
% initialise your output images
ImgSliced=I;
CoinsEnhanced=0*I;
% find all the coins based on pixel values
CoinsMask = (I>= MinPixel) & ( I <=MaxPixel);
% set pixels inside the coin to white
ImgSliced(CoinsMask) = 255;
% increase the contrast within the coins
CoinsEnhanced(CoinsMask) =round((I(CoinsMask)-MinPixel)*1.7); % could be any transform
% and set the background to another grey level
CoinsEnhanced(~CoinsMask) =230; % could be any value or another transform
% note that having a single grey level as background does not feel 'right'
% for human vision.
figure(1)
clf
subplot(221),imshow(I),title('original image')
subplot(222),imshow(ImgSliced),title('grey level slicing mask')
subplot(223),imshow(CoinsEnhanced),title('coins enhanced')