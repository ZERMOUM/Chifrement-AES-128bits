library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity SubBytes is
    port (
        SubBytes_i : in type_state;
        SubBytes_o : out type_state);
end entity;

architecture SubBytes_arch of SubBytes is
-- instanciation de Sbox
    component SBox is
        port (
            SBox_i : in bit8;
            SBox_o : out bit8);
    end component;
    
    begin
-- deux boucle pour faire le Sbox d'une matrice   
    G1 : for i in 0 to 3 generate 
         G2:  for j in 0 to 3 generate 
    Sb:  SBox port map (
            SubBytes_i(i)(j), SubBytes_o(i)(j));
    end generate G2;
end generate G1;

end architecture;