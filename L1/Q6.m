function [] = stretch(input, r1, r2, s1, s2)
      output = input;
      for i = 1:size(input,1)
          for j = 1:size(input,2)
              if input(i,j) < r1
                 output(i,j) = (s1/r1)*input(i,j);  For (r1,s1) before
               elseif input(i,j) >= r1 && input(i,j) < r2
                      output(i,j) = (s2-s1)/(r2-r1)*(input(i,j)-r1) + s1;
               else
                 output(i,j) = (255-s2)/(255-r2)*(input(i,j)-r2)+ s2;  For(r2,s2) after
               end
          end
     end
 figure;
 imshow(output);
 lab3(moon, 10, 20, 100, 200) example
end
