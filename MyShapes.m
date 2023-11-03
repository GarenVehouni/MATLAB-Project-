%prompt user to choose out of the available shape options
x = 1;
while (x ~= 5) %while loop so the user can play again until the system is prompted to end
disp('If you would like to create a circle, type: 1');
disp('If you would like to create a rectangle, type: 2');
disp('If you would like to create a triangle, type: 3');
disp('If you would like to create a equilateral triangle, type: 4');
disp('If you would like to stop, type 5');

%Accept user input

x = input('Enter now \n');

if x == 1 %if user enters 1, prompt them to enter circle properties 
    disp('You chose circle, now please enter its properties');
    name = input('Name the circle: \n', 's');
    color = input('What color do you want? Valid colors are red, green, blue, cyan, magenta, yellow and black only: \n', 's');
    radius = input('Give the radius: \n');
    userCircle = Circle(name, color, radius);
    userCircle.Draw();
elseif x == 2 %if user enters 1, prompt them to enter rectangle properties 
    disp('You chose rectangle');
    name = input('Name the rectangle: \n', 's');
    color = input('What color do you want? Valid colors are red, green, blue, cyan, magenta, yellow and black only: \n', 's');
    width = input('Give the width: \n');
    length = input('Give the length: \n');
    userRectangle = Rectangle(name, color, width, length);
    userRectangle.Draw();

elseif x == 3 %if user enters 1, prompt them to enter triangle properties 
    disp('You chose triangle');
    name = input('Name the triangle: \n', 's');
    color = input('What color do you want ? Valid colors are red, green, blue, cyan, magenta, yellow and black only: \n', 's');
    base = input('Give the base: \n');
    height = input('Give the height: \n');
    userTriangle = Triangle(name, color, base, height);
    userTriangle.Draw();
elseif x == 4 %if user enters 1, prompt them to enter equilateral triangle properties 
    disp('You chose an equilateral triangle');
    name = input('Name the equilateral triangle: \n', 's');
    color = input('What color do you want? Valid colors are red, green, blue, cyan, magenta, yellow and black only: \n', 's');
    sidelength = input('Give the sidelength: \n');
    userEquilateral = EquilateralTriangle(name, color, sidelength);
    userEquilateral.Draw();

elseif x == 5
    break;

else %user enters invalid input
    disp('Invalid input');

end 
end
disp('Thank you for playing');

