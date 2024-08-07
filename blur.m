I = imread('circuit.tif');
imshow(I)
BW1 = edge(I,'Prewitt');
imshowpair(I,BW1,'montage')