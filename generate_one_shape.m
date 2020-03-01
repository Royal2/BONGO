function binaryImage = generate_one_shape(numSides, orientation)
    xCenter = randi([200,300],1,1);
    yCenter = randi([200,300],1,1);
    theta = linspace(0, 2*pi, numSides + 1);
    theta = theta - pi/orientation;
    % radius = 100;
    radius = randi([40,150],1,1);
    x = radius * cos(theta) + xCenter;
    y = radius * sin(theta) + yCenter;
%     plot(x, y);
%     axis square;
    binaryImage = poly2mask(x, y, 500, 500);
%     imshow(binaryImage);
end