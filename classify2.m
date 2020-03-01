function output = classify2(block0, block1, test_img)
%determining which block matrix is identical to test_img matrix
    if(block0 == test_img)
        output = 0;
    elseif(block1 == test_img)
        output = 1;
    end
end
