function d = maxdiag (F)
d = sort (abs (diag (F.U))) ;
d = d ([end 1]) ;
end

