classdef Rectangle < Shape & ColorMixin
    %This class should have length and width properties and implement the CalculateArea method to calculate the area of a rectangle
    
    properties
        Width %width property
        Length %length property
    end
    
    methods
        function obj = Rectangle(name,Color,Width,Length)
            %Overloads the constructor to accept length, width
            obj@Shape(name); %Contructor calls parent constructor 
            obj@ColorMixin(Color);
            obj.Length = Length;
            obj.Width = Width; 
        end
        
        function rectangleArea = CalculateArea(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            rectangleArea = obj.Length * obj.Width;
        end
        function Display(obj)
            %Display method should output (print) a with all the properties & area
            fprintf('The area of a rectangle with a width of %.2f units and a width of %.2f units is approximately %.3f square units.\n', obj.Width, obj.Length, obj.CalculateArea);
            fprintf('The color of the rectangle is %s ', obj.GetColor());
        end 
    end
end

