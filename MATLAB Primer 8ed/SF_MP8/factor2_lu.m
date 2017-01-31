classdef factor2_lu < factor2_generic
    %FACTOR2_LU for LU factorization
    methods
        function F = factor2_lu (A)
            [F.L F.U] = lu (A) ;
        end
        function x = mldivide (F,b)
            x = F.U \ (F.L \ b) ;
        end
    end
end
