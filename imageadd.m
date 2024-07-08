i=imread('rice.png');
j=imread('cameraman.tif');
k=imadd(i,j);
imshow(k);
j=j+25;
imshow(j);

