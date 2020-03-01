function output = classify1(block0, block1, test_img)
%object detection
    %image is in black and white (BW)
    %imshow(test_img)
    %bwboundaries(BW, '');   %traces exterior boundaries
    %regionprops(img, '');    %object properties, look into circularity
    
    %object area properties
    b0_props=regionprops(block0, 'Area');
    b1_props=regionprops(block1, 'Area');
    %Number of objects detected
    N0=numel(b0_props);
    N1=numel(b1_props);
    
    %fprintf('number of objects detected in B0 %d, B1 %d\n', N0, N1);
    if(N0)
        output = 0; %object detected in block 0
    elseif(N1)
        output = 1; %object detected in block 1
    end
end