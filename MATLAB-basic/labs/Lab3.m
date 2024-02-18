% Task 1:
% 1) Create a new function in MATLAB called mySimpleFunction.
% 2) This function should take two input arguments (numbers) and return their sum.
% 3) Call this function with sample inputs and display the result.

function sum = mySimpleFunction(num1,num2)
    sum = num1 + num2;
end



%Task 2:
% 1) Create a function named calculateCircleArea that takes the radius of a circle as input and returns the area of the circle.
% 2) Call the function with different radii and display the results.

function Area = calculateCircleArea(R)
    Area = pi * (R^2);
end



%Task 3:
% 1) Create a function named computeStatistics that takes a vector of numbers as input.
% 2) This function should return both the mean and the standard deviation of the input vector.
% 3) Call the function with sample data and display the results.

function [MEAN , SD] = computeStatistics(X) % x here is an array
MEAN = mean(X);
SD = std(X);
end



%Task 4:
% 1) Create a main function called outerFunction.
% 2) Inside outerFunction, define another function called innerFunction.
% 3) innerFunction should take two inputs, add them, and return the result.
% 4) Call innerFunction from outerFunction and display the result.

function out_result = outerFunction(x,y)
 out_result = innerFunction(x , y);
end
 
function Result =  innerFunction(num1 , num2)
    Result = num1 + num2;
end



%Task 5:
% 1) Create a function named applyFunction that takes a function handle and a vector as inputs.
% 2) The function should apply the provided function to every element in the vector and return the result.
% 3) Test this function with various function handles, like square, cube, etc.

function result = Lab3(handlefunc,vector)
    result = handlefunc(vector);
end
% write that call in command window to test your function
% handlefunc = @(A)(5+A); A=[1 2 3 ; 4 5 6 ; 7 8 9]; Result = Lab3(handlefunc,A)



% Task 6:
% 1) Create an anonymous function that calculates the area of a triangle.
%    The function should take base and height as inputs.
% 2) Call the anonymous function with different base and height values to calculate triangle areas.

areaoftriangle = @(b,h)((1/2)*b*h);
area = areaoftriangle(78,5); % you can call and display it from command window also 
disp(area);



% Task 7:
% 1) Use MATLAB's built-in functions like max, min, and sum in a script.
% 2) Create a vector of numbers and apply these functions to it.

A = 1:10;
MAX = max(A);
MIN = min(A);
SUM = sum(A);
fprintf ('Maximum is %d\nMinimum is %d\nSummation is %d\n',MAX,MIN,SUM);

