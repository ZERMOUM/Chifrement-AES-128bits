library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity ShiftRows is
    port (
        shiftrows_i :in type_state;
        shiftrows_o :out type_state);
end entity ShiftRows;

architecture ShiftRows_arch of ShiftRows is

begin
    -- process pour la permutation cyclique  des octets des lignes
    P: process (shiftrows_i)
    begin
        B0: for i in 0 to 3 loop
            B1 : for j in 0 to 3 loop
                shiftrows_o(i)(j) <= shiftrows_i((i+j) mod 4)(j);
            end loop B1;
        end loop B0;
     
    end process P;

end architecture ShiftRows_arch;