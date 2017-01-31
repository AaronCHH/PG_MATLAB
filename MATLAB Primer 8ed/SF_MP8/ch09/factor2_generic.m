classdef factor2_generic
    properties
        L, U ;
    end
    methods (Abstract)
        x = mldivide (F, b) ;
    end
end
