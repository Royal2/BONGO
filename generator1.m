function [A,B,test_img,label] = generator1()

%part 1 - generates blank image or a triangle
empty = zeros(500,500);
label = randi([0, 1], 1,1);
shape = randi([3, 4], 1,1);
orientation = randi([1, 6], 1,1);
test_img = generate_one_shape(shape, orientation);
if label == 0
    orientation = randi([1, 6], 1,1);
    A = generate_one_shape(shape, orientation);
    B = empty;
else
    A = empty;
    orientation = randi([1, 6], 1,1);
    B = generate_one_shape(shape, orientation);
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

function [A,B,test_img,label] = generator2()

%part 1 - generates blank image or a triangle
% empty = zeros(500,500);

label = randi([0, 1], 1,1);
shape = randi([3, 4], 1,1);
orientation = randi([1, 10], 1,1);
test_img = generate_one_shape(shape, orientation);
orientation = randi([1, 10], 1,1);
if label == 0
    A = test_img;
    B = generate_one_shape(7-shape, orientation);
else
    A = generate_one_shape(7-shape, orientation);
    B = test_img;
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


