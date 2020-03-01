function output = classify3(block0, block1, test_img)
    %binary to grayscale
    block0 = uint8(255 * block0);
    block1 = uint8(255 * block1);
    test_img = uint8(255 * test_img);
    %smoothing using gaussian filter
    block0=imgaussfilt(block0, 0.13);
    block1=imgaussfilt(block1,0.13);
    test_img=imgaussfilt(test_img,0.13);
    %cordinates of the detected corners
    test_corners=corner(test_img, 'SensitivityFactor', 0.245, 'QualityLevel', .99);
    b0_corners=corner(block0, 'SensitivityFactor', 0.245, 'QualityLevel', 0.99);
    b1_corners=corner(block1, 'SensitivityFactor', 0.245, 'QualityLevel', 0.99);
    %number of corners detected
    num_ct=size(test_corners,1);
    num_c0=size(b0_corners,1);
    num_c1=size(b1_corners,1);
    if(abs(num_ct-num_c0)<abs(num_ct-num_c1))
        output = 0;
    else
        output = 1;
    end
end