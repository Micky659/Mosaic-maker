function element_img = build_mosaic (element_img, target_mean)

elementmean = mean(element_img(:));

while (abs(target_mean-elementmean) > 0.5)
  if((target_mean-elementmean) > 0)
    element_img = element_img + 1;
  else
    element_img = element_img - 1;
  end
  
  elementmean = mean(element_img(:));
end
 
endfunction
