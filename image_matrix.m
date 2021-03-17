% This function uses the elemental image as a building block and creates 
% a matrix wall of dimension n*H and m*W where n and m are dimensions of 
% element image and H and W are dimension of big image
function [ matrix ] = image_matrix(elementimage, MatrixHeight, MatrixWidth)
  
  n = size(elementimage, 1);
  m = size(elementimage, 2);
  H = MatrixHeight;
  W = MatrixWidth;
  
  %Empty matrix
  matrix = zeros(n*H, m*W);

  %Create a matrix made out of elementimage
  for i = 1:1:H
    for j = 1:1:W
      
      matrix(((i-1)*n)+1 : i*n, ((j-1)*m)+1 : j*m) = elementimage;
    end
  end
  
endfunction
