library IEEE;
use IEEE.std_logic_1164.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity ShiftRows_tb is
end entity;

architecture ShiftRows_tb_arch of ShiftRows_tb is
    component ShiftRows is
        port (
            shiftrows_i :in type_state;
            shiftrows_o :out type_state);
    end component;
signal shiftrows_is : type_state;
signal shiftrows_os : type_state;
begin
    DUT: ShiftRows
    port map (
        shiftrows_i => shiftrows_is,
        shiftrows_o => shiftrows_os
    );
P: process 
begin
    --- vecteurs de test
    shiftrows_is <= ((X"9f",X"d7",X"07",X"aa"),
                     (X"4c",X"19",X"c8",X"dd"),
                     (X"a6",X"81",X"10",X"8e"),
                     (X"f8",X"ac",X"a8",X"7b"));
    wait;
end process;

    

end architecture ShiftRows_tb_arch;