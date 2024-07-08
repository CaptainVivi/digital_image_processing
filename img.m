A=imread('cameraman.tif');
figure;imshow(A)
B=imresize(A,[150 150]);
figure;imshow(B);
C=imresize(A,[100 100]);
D=imresize(A,[80 80]);
E=imresize(A,[64 64]);
F=imresize(A,[32 32]);
subplot(2,3,1);imshow(A);subplot(2,3,2);imshow(B)
subplot(2,3,3);imshow(C);subplot(2,3,4);imshow(D)
subplot(2,3,5);imshow(E);subplot(2,3,6);imshow(F)
G=gray2ind(A,100);
figure,imshow(G);
