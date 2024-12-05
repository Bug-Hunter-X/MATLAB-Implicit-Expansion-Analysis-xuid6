function result = myFunctionSolution(input)
% This function demonstrates a solution to the implicit expansion bug.
  a = [1, 2, 3];
  b = [4; 5; 6];
  result = a + b;  % Implicit expansion works as expected
  c = [7 8 9];
  d = [10;11;12];
  % Solution using explicit expansion
  result2 = bsxfun(@plus, c, d'); 
  %Alternative solution: Reshape matrices to be compatible for implicit expansion
  result3 = reshape(c, [1,3]) + d;
end