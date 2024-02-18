% MATLAB Control Structures - While and Switch
% Task 1: While Loop
% 1) use a while loop to print even numbers from 2 to any selected number.

number = input('Please enter your number: ');
x=2;
while x <= number
    %disp(x);
    fprintf('%d  ',x);
    x=x+2;
end
fprintf('\n');

% 2) calculate the factorial of a given number using a while loop. Prompt the user for input.

number = input('Please enter your number: ');
mul=1;
while number~=0
    mul = mul * number;
    number = number - 1;
end
disp(mul);

% Task 2: Switch Statement
% 1) calculate the cost of a trip based on the mode of transportation.
%    Use a switch statement to handle different cases.
%    The modes are: car, train, bus, and airplane. Each mode has a different cost per mile.

mode = input('Please enter your mode: ','s');
miles = input('Enter your trip miles: ');
switch mode
    case 'car'
        cost=25 * miles;
        fprintf('Cost per mile for car is equal to: %d$\n',cost);
    case 'train'
        cost=7 * miles;
        fprintf('Cost per mile for train is equal to: %d$\n',cost);
    case 'bus'
        cost=13 * miles;
        fprintf('Cost per mile for bus is equal to: %d$\n',cost);
    case 'airplane'
        cost=80 * miles;
        fprintf('Cost per mile for airplane is equal to: %d$\n',cost);
    otherwise
        disp('Enter correct mode please :)');
end

% 2) Create a script that translates a color code into its corresponding name
%    using a switch statement. Prompt the user for input and handle at least five different
%    color codes.

code = input('Please enter your color code between 1 and 4: ');
switch code
    case 1
        disp('your color is RED');
    case 2
        disp('your color is BLACK');
    case 3
        disp('your color is WHITE');
    case 4
        disp('your color is BLUE');
    otherwise
        disp('OUT OF RANGE');
end

