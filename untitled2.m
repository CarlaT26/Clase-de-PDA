clc
close all
clear all

reducir = 8;
%leer archivos de imagen
im1 = imread('arco.jpg');
im2 = imread('balon.jpg');

%captura demensiones de imagen
[r,c,d] = size(im1);

%crear matriz de cero
im_black = zeros (r,c,d);

%reduccion imagn 2
im2_small= imresize (im2, 1/reducir);

im_black (201:250,301:375,:)= im2_small;
im1= double (im1);

%sumatoria de las imagenes
im_salida = im1 + im_black;

%hallar maximo para normalizar
maximo = max(max(max(im_salida)));%normalizar
im_salida = im_salida./maximo;%escalizar a valores de imagen

im_salida= uint8(im_salida*255);


figure;
subplot(1,3,1),imshow(im1)
subplot(1,3,2),imshow(im2)
subplot(1,3,3),imshow(im_black)

figure;
imshow(im_salida);


