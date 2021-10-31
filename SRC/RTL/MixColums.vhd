library IEEE;
use IEEE.std_logic_1164.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity MixColums is
    port (
       MixColums_i :in type_state;
       MixColums_o :out type_state);
end entity MixColums;

architecture MixColums_arch of MixColums is
-- instanciation de composent ProduitMatrix
    component  ProduitMatrix is
        port (
            Column_i :in column_state;
            Column_o :out column_state
        );
    end component;

begin
-- boucle for pour MixColumns sur les 4 colonnes

G1: for i in 0 to 3 generate 
    produit: ProduitMatrix 
    port map (
        Column_i(0) => MixColums_i(i)(0),
        Column_i(1) => MixColums_i(i)(1),
        Column_i(2) => MixColums_i(i)(2),
        Column_i(3) => MixColums_i(i)(3),

        Column_o(0) => MixColums_o(i)(0),
        Column_o(1) => MixColums_o(i)(1),
        Column_o(2) => MixColums_o(i)(2),
        Column_o(3) => MixColums_o(i)(3)
    ); 
    
 end generate G1;
    

end architecture MixColums_arch;