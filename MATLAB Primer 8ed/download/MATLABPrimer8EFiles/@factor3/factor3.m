classdef factor3
    %FACTOR3 my first useful object
    properties
        L, U ;
    end
    methods
        function F = factor3 (A)
            [F.L F.U] = lu (A) ;
        end
    end
end
