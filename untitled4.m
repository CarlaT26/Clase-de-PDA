clc
close all
clear all

im = imread('letra-a.jpg');
N= 50;
M_conv= ones(N)/N^2;

im_salida= imfilter(im, M_conv);

 figure;
 subplot(1,2,1),imshow(im)
 subplot(1,2,2),imshow(im_salida)