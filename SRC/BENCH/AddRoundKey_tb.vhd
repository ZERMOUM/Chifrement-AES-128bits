library IEEE;
use IEEE.std_logic_1164.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity AddRoundKey_tb is
end entity;

architecture AddRoundKey_tb_arch of AddRoundKey_tb is
    component AddRoundKey is
        port (
            state_i :in type_state;
            key_i   :in type_key;
            state_o :out type_state);
    end component ;
Signal state_is :type_state;
Signal key_is   :type_key;
Signal state_os :type_state;
begin
    DUT:AddRoundKey
    port map (
        state_i => state_is,
        key_i   => key_is,
        state_o => state_os
    );
P: process 
begin
    -- vecteurs de test
    state_is <= ((X"45",X"73",X"2d",X"74"), 
                (X"75",X"20",X"63",X"6f"),
                 (X"6e",X"66",X"69",X"6e"),
                 (X"e8",X"65",X"20",X"3f"));

    key_is   <= ((X"2b",X"7e",X"15",X"16"),
                (X"28",X"ae",X"d2",X"a6"),
                (X"ab",X"f7",X"15",X"88"),
                (X"09",X"cf",X"4f", X"3c"));
 wait;

end process;

end architecture AddRoundKey_tb_arch;