%This program creates a mosaic that is made up of small elemental images but when looked from a distance forms a different image.
%Program takes two image input one used as a block and the other as the bigger picture

clear;
close all;
clc;

%Input from both images
%Use images of small dimension for both block and big
Block = 'Input/Block.jpg';
Big = 'Input/Big.png';

%Imread will convert the images into a matrix, after that convert the matrix images into grayscale
element_img = imread(Block);
element_img = rgb2gray(element_img);

big_img = imread(Big);
big_img = rgb2gray(big_img);


n = size(element_img, 1)
m = size(element_img, 2)

H = size(big_img, 1)
W = size(big_img, 2)

%Create a simple image matrix from the element image
simple_matrix = image_matrix(element_img, H, W);
mosaic = simple_matrix;

for i = 1:1:H
  for j = 1:1:W
    elementimg = build_mosaic(element_img, big_img(i,j));
    mosaic(((i-1)*n)+1 : i*n, ((j-1)*m)+1 : j*m) = elementimg;
  end
end


%Scaling 
simple_matrix = simple_matrix - min(simple_matrix(:));
simple_matrix = simple_matrix./(max(simple_matrix(:)));

mosaic = mosaic - min(mosaic(:));
mosaic = mosaic./(max(mosaic(:)));


%Display figures
figure(1);
imshow(simple_matrix);

figure(2);
imshow(mosaic);


imwrite(simple_matrix, 'Output/simple_matrix.png');
imwrite(mosaic, 'Output/Mosaic.png');


%Created by Akshat Kothari (March 2021)