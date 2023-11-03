classdef Circle < Shape & ColorMixin
    %This class should have a radius property and implement the CalculateAre method to calculate the area of a circle.
    
    properties
        Radius %Radius property
    end
    
    methods
        function obj = Circle(name,Color,Radius)
            obj@Shape(name); %Contructor calls parent constructor 
            obj@ColorMixin(Color);
            obj.Radius = Radius;


        end
        
        function circleArea = CalculateArea(obj)
            %Method to calculate area of circle
            circleArea = pi * obj.Radius ^2;
        end

        function Display(obj)
            %Display method should output (print) a with all the properties & area
            fprintf('The area of a circle with a radius of %.2f units is approximately %.3f square units.\n', obj.Radius, obj.CalculateArea);
            fprintf('The color of the circle is %s ', obj.GetColor());
        end 
    end
end

