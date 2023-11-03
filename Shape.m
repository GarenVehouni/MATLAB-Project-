classdef Shape
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Name %name of shape
        Area %Area of shape
    end
    
    methods
        function obj = Shape(Name)
 
            obj.Name = Name;
        end
        
        function Display(obj)
            fprintf('The area of the shape is: %.2f\n', obj.Area);
            fprintf('The name of the shape is: %s\n', obj.Name);
            
        end
    end
end

