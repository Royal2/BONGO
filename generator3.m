function [A,B,test_img,label] = generator3()

%part 1 - generates blank image or a triangle
% empty = zeros(500,500);

label = randi([0, 1], 1,1);
orientation = randi([1, 10], 1,1);
test_img = generate_one_shape(3, orientation);
orientation = randi([1, 10], 1,1);
if label == 0
    
    A = generate_one_shape(3, orientation);
    B = generate_one_shape(4, orientation);
else
    A = generate_one_shape(4, orientation);
    B = generate_one_shape(3, orientation);
end
% figure(1);
% subplot(1,3,1);
% imshow(A);
% title('Block 0');
% subplot(1,3,2);
% imshow(B);
% title('Block 1');
% subplot(1,3,3);
% imshow(test_img);
% title('Test Image');

end

