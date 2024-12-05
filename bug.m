function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit expansion.
  a = [1, 2, 3];
  b = [4; 5; 6];
  result = a + b;  % Implicit expansion works as expected
  c = [7 8 9];
  d = [10;11;12];
  result2 = c + d; % Implicit expansion throws error
end