I = imread('circuit.tif');
 imshow(I)
A = edge(I,'Prewitt');
imshowpair(I,A,'Montage')
B= edge(I,'Sobel');
C = edge(I,'Canny');
imshow(B)
imshow(C)


