library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity ProduitMatrix is
    port (
        Column_i :in column_state;
        Column_o :out column_state
    );
end entity;

architecture ProduitMatrix_arch of ProduitMatrix is
    signal S0x1_s, S0x2_s, S0x3_s: bit8;
    signal S1x1_s, S1x2_s, S1x3_s: bit8;
    signal S2x1_s, S2x2_s, S2x3_s: bit8;
    signal S3x1_s, S3x2_s, S3x3_s: bit8;
begin
 -- produit matriciel 
    S0x1_s <= column_i(0);
    S0x2_s <= S0x1_s(6 downto 0) & '0' when S0x1_s(7) = '0' else S0x1_s(6 downto 0) & '0' xor X"1B";
    S0x3_s <= S0x2_s xor S0x1_s;
    
    S1x1_s <= column_i(1);
    S1x2_s <= S1x1_s(6 downto 0) & '0' when S1x1_s(7) = '0' else S1x1_s(6 downto 0) & '0' xor X"1B";
    S1x3_s <= S1x2_s xor S1x1_s;
  
    S2x1_s <= column_i(2);
    S2x2_s <= S2x1_s(6 downto 0) & '0' when S2x1_s(7) = '0' else  S2x1_s(6 downto 0) & '0' xor X"1B";
    S2x3_s <= S2x2_s xor S2x1_s;

    S3x1_s <= column_i(3);
    S3x2_s <= S3x1_s(6 downto 0) & '0' when S3x1_s(7) = '0' else S3x1_s(6 downto 0) & '0' xor X"1B";
    S3x3_s <= S3x2_s xor S3x1_s;
 -- resultats de prduit matricel (matrice de 4 colonnes)
    column_o(0) <= S0x2_s xor S1x3_s xor S2x1_s xor S3x1_s;
    column_o(1) <= S0x1_s xor S1x2_s xor S2x3_s xor S3x1_s;
    column_o(2) <= S0x1_s xor S1x1_s xor S2x2_s xor S3x3_s;
    column_o(3) <= S0x3_s xor S1x1_s xor S2x1_s xor S3x2_s;

end architecture;