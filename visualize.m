function visualize(question,count)
    for i= 1:count
        if question == 1
            [A,B,test_img,label] = generator1();
        end
        if question == 2
            [A,B,test_img,label] = generator2();
        end
        if question == 3
            [A,B,test_img,label] = generator3();
        end
        if question == 4
            [A,B,test_img,label] = generator4();
        end
        figure(1);
        subplot(1,3,1);
        imshow(A);
        title('Block 0');
        subplot(1,3,2);
        imshow(B);
        title('Block 1');
        subplot(1,3,3);
        imshow(test_img);
            %plotting centroids over test image
            %{
            s = regionprops(test_img,'centroid');
            centroids = cat(1,s.Centroid);
            imshow(test_img)
            hold on
            plot(centroids(:,1),centroids(:,2),'r*')
            hold off
            %}
        title(sprintf('Test Image, label = %d', label));
        pause(0.7);
    end

end
