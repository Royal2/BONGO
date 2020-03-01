function output = classify4(block0, block1, test_img)
    %corner detection
    %{
    %cordinates of the detected corners
    test_corners=corner(test_img, 'SensitivityFactor', 0.245,'QualityLevel', 0.9);
    b0_corners=corner(block0, 'SensitivityFactor', 0.245, 'QualityLevel', 0.9);
    b1_corners=corner(block1, 'SensitivityFactor', 0.245, 'QualityLevel', 0.9);
    %number of corners detected
    num_ct=size(test_corners,1);
    num_c0=size(b0_corners,1);
    num_c1=size(b1_corners,1);
    if(abs(num_ct-num_c0)<abs(num_ct-num_c1))
        output = 0;
    else
        output = 1;
    end
    %}
    
    %{
    %circularity
    b0 = regionprops(block0,'Perimeter','Area');
    b1 = regionprops(block1,'Perimeter','Area');
    bt = regionprops(test_img,'Perimeter','Area');
    c0 = [b0.Perimeter].^2 ./ (4 * pi * [b0.Area]);
    c1 = [b1.Perimeter].^2 ./ (4 * pi * [b1.Area]);
    ct = [bt.Perimeter].^2 ./ (4 * pi * [bt.Area]);
    %}
    
    %area
    a0=regionprops(block0,'Area');
    a1=regionprops(block1,'Area');
    at=regionprops(test_img,'Area');
    %perimeter
    p0=regionprops(block0,'Perimeter');
    p1=regionprops(block1,'Perimeter');
    pt=regionprops(test_img,'Perimeter');
    %circularity
    c0=[p0.Perimeter].^2/(4*[a0.Area]*pi);
    c1=[p1.Perimeter].^2/(4*[a1.Area]*pi);
    ct=[pt.Perimeter].^2/(4*[at.Area]*pi);
    
    if (abs(ct-c0)<abs(ct-c1))
        output = 0;
    else
        output = 1;
    end
end
