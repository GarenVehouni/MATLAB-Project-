classdef Triangle < Shape & ColorMixin
    %This class should have base and height properties and implement the CalculateArea method to calculate the area of a triangle.
    
    properties
        Base
        Height
    end
    
    methods
        function obj = Triangle(name, Color, Base, Height)
            %Overloads the constructor to accept base, height
            obj@Shape(name); %Contructor calls parent constructor
            obj@ColorMixin(Color);
            obj.Base = Base;
            obj.Height = Height;
        end
        
        function triangleArea = CalculateArea(obj)
            %Calculates Area of triangle 
            triangleArea = (obj.Base * obj.Height) / 2;
        end
        function Display(obj)
            %Display method should output (print) a with all the properties & area
            fprintf('The area of a triangle with a base of %.2f units and a height of %.2f units is approximately %.3f square units.\n', obj.Base, obj.Height, obj.CalculateArea);
            fprintf('The color of the triangle is %s: ', obj.GetColor());
        end
    end
end

