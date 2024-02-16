%Part 1: Creating Numeric Arrays
matrixA=[3 2 1 ; 6 5 4 ; 9 8 7];
matrixB=[12 11 10 ; 15 14 13 ; 18 17 16];
matrixSum=plus(matrixA,matrixB);
disp(matrixSum);

%Part 2: Matrix Concatenation
rowVector = 1:5;
columnVector = 6:10;
horizontalConcat = horzcat(rowVector,columnVector);
disp(horizontalConcat);

%Part 3: Using repmat Function
originalMatrix = ones(3,3);
repeatedMatrix = repmat(originalMatrix,4,4);
disp(repeatedMatrix);

%Part 4: Challenge
identityMatrix = eye(3,3);
matrixProduct = mtimes(matrixA,identityMatrix);
disp(matrixProduct);