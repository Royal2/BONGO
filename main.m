function main(question)
    number_of_round = 100;
    correct_count = 0;
    for i = 1:number_of_round
        if question == 1
            [block0,block1,test_img,label] = generator1();
            output = classify1(block0,block1,test_img);
        end
        if question == 2
            [block0,block1,test_img,label] = generator2();
            output = classify2(block0,block1,test_img);
        end
        if question == 3
            [block0,block1,test_img,label] = generator3();
            output = classify3(block0,block1,test_img);
        end
        if question == 4
            [block0,block1,test_img,label] = generator4();
            output = classify4(block0,block1,test_img);
        end
%         output = classify(block0,block1,test_img);
        if output == label
            correct_count = correct_count + 1;
        end
        
    end
    accuracy = correct_count / number_of_round;
    fprintf('The accuracy of question %d is %f\n', question, accuracy);
end
