classdef factor2_chol < factor2_generic
    %FACTOR2_CHOL for Cholesky 
    methods
        function F = factor2_chol (A)
            F.U = chol (A) ;
        end
        function x = mldivide (F,b)
            x = F.U \ (F.U' \ b) ;
        end
    end
end
