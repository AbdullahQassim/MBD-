%Define variable intVar with an integer value of your choice.
%Define variable doubleVar with a double-precision floating-point value.
%Display the data type of both intVar and doubleVar.
intVar = 155;
doubleVar = 3.123456;
disp(['data type of intVar is: ' num2str(intVar)]);
disp(['data type of doubleVar is: ' num2str(doubleVar)]);

%Create a row vector evenNumbers containing the first 5 even numbers (2, 4, 6, 8, 10).
%Create a column vector primeNumbers containing the first 5 prime numbers (2, 3, 5, 7, 11).
%Display both evenNumbers and primeNumbers.
evenNumbers = 2:2:10;
primeNumbers = [2 3 5 7 11];
disp(evenNumbers);
disp(primeNumbers);

%Create a 3x3 identity matrix identityMatrix using a specialized matrix function.
%Create a 2x2 magic square magicSquare using another specialized matrix function.
%Display both identityMatrix and magicSquare.
identityMatrix = eye(3,3);
magicSquare = magic(2);
disp(identityMatrix);
disp(magicSquare);

%Concatenate the evenNumbers vector horizontally with the primeNumbers vector to create a new row vector combinedVector.
%Display the combinedVector.
%Create a new matrix combinedMatrix by vertically concatenating identityMatrix and magicSquare.
%Display the combinedMatrix.
combinedVector = horzcat(evenNumbers,primeNumbers); 
disp(combinedVector);
%combinedMatrix = [identityMatrix;magicSquare]; error because Dimensions of arrays concatenated are not consistent.
magicSquareNEW = magic(3); %make new magicmatrix 3*3
combinedMatrix = [identityMatrix;magicSquareNEW];
disp(combinedMatrix);