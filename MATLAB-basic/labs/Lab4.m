%1) Cell Arrays:
%   Create a cell array containing various data types (numbers, text, and variables).
%   Access and display specific elements within the cell array.

cellArray = {'Abdullah',25,[1 2 3 ; 4 5 6 ; 7 8 9],'Hi'};
disp(cellArray); %disp cellArray before adding elements

cellArray{end+1}='Buy';
disp(cellArray); %disp cellArray after adding element in last index

Matrix = cellArray{3};
My_name = cellArray(1);
disp(Matrix);
disp(My_name);

cellArray{1} = 'Omar';
disp(cellArray(1));

elements = numel(cellArray);
disp(elements);

%**************************************************%

% 2) Structures:
%    Create a simple structure to store information about a person (name, age, city).
%    Access and display the structure fields.

My_data = struct('Name','Abdullah Qassim Diab');
My_data.age = 25;
My_data.contacts.phone = '+201156775336';
My_data.contacts.address.city = 'Mansoura';
My_data.contacts.address.governorate = 'Dakahlia';

disp(My_data);
disp(My_data.contacts);
disp(My_data.contacts.address);

%**************************************************%

% 3) Character Data:
%    Create a character array with your name.
%    Concatenate your name with another character array.
%    Display the results.

Name = 'Abdullah';
FName = 'Qassim';
Full_Name = [Name,' ',FName];
disp(Full_Name);

%**************************************************%

% 4) Conditional Statements (If):
%    Write an if statement that checks if a number is even or odd.
%    Display a message based on the result of the if statement.

NUM = input('Enter you num please: ');
if rem(NUM,2)==0
    disp('The number is even');
else 
    disp('The number is odd');
end

%**************************************************%

% 5) For Loops:
%    Create a for loop to generate a sequence of numbers (e.g., 1 to 10).
%    Display the numbers within the loop.

for i = 1:10
    disp(i); 
end

%**************************************************%

% 6) Basic Plotting:
%    Generate data for a simple plot (e.g., a sine wave).

X = linspace(-2*pi,2*pi,100);
Y1 = sin(X);
Y2 = cos(X);

subplot(1,2,1);
plot(X,Y1,'Color','k','LineWidth',3);
title('Sin(X)');
xlabel('X-axis');
ylabel('Y-axis');

subplot(1,2,2);
plot(X,Y2,'Color','r','LineWidth',3);
title('Cos(X)');
xlabel('X-axis');
ylabel('Y-axis');




















