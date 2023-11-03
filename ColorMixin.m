classdef ColorMixin
    properties
        Color
    end
    
    methods
        % Constructor to set the initial color
        function obj = ColorMixin(Color)
            obj.Color = Color;
        end

        % Getter method for retrieving the color
        function Color = GetColor(obj)
            Color = obj.Color;
        end

        % Setter method for updating the color
        function obj = SetColor(obj, Color)
            obj.Color = Color;
        end
    end
end
