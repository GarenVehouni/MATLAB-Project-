classdef EquilateralTriangle < Triangle & ColorMixin
    %class named EquilateralTriangle that inherits from the Triangle class
    
    properties
        SideLength %side length property of equilateral triangle
    end
    
    methods
        function obj = EquilateralTriangle(name, Color,SideLength)
            %Constructor to accept the side length
            %Call the parent constructor for base and height properties
          
            obj@Triangle(name, Color, SideLength, (sqrt(3) / 2) * SideLength);
            obj@ColorMixin(Color);
            obj.SideLength = SideLength;
        end
        
       function Display(obj)
            %Display method in the class to display the side length and the area of an equilateral triangle.
            fprintf('The area of a triangle with a side length of %.2f units is approximately %.3f square units.\n', obj.SideLength, obj.CalculateArea);
            fprintf('The color of the equilateral triangle is %s', obj.GetColor());
        end
    end
end

