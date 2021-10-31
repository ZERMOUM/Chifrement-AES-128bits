library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity AddRoundKey is
    port (
        state_i :in type_state;
        key_i   :in type_key;
        state_o :out type_state);
end entity AddRoundKey;

architecture AddRoundKey_arch of AddRoundKey is
-- AddRoundKey pour ajoute la clef de ronde courante
begin
P: process (state_i,key_i)
begin
    B0: for i in 0 to 3 loop
        B1: for j in 0 to 3 loop
            state_o(i)(j) <= state_i(i)(j) xor key_i(i)(j); -- xor entre matrice de msg et celle de clé
        end loop B1;
    end loop B0;
end process;
    
end architecture AddRoundKey_arch;

