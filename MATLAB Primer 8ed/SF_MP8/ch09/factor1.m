classdef factor1
    %FACTOR1 my first useful object
    properties
        L, U, morestuff ;
    end
    methods
        function F = factor1 (A)
            [F.L F.U] = lu (A) ;
        end
        function x = mldivide (F,b)
            x = F.U \ (F.L \ b) ;
        end
    end
end
