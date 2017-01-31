function F = factor2 (A)
%FACTOR2b LU or CHOL factorization
chol_ok = false ;
d = diag (A) ;
if (all (d > 0) && nnz (imag (d)) == 0 && nnz (A-A') == 0)
    try
        F = factor2_chol (A) ;
        chol_ok = true ;
    catch
    end
end
if (~chol_ok)
    F = factor2_lu (A) ;
end
