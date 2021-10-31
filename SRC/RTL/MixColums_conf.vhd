library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
-- la configuration de MixColums
configuration MixColums_conf of MixColums is 
 for MixColums_arch
    for  G1 
        
            for all:ProduitMatrix
                use entity LIB_RTL.ProduitMatrix(ProduitMatrix_arch);
            end for;
    
    end for;
 end for;
 end MixColums_conf;
