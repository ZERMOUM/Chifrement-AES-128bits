library IEEE;
use IEEE.std_logic_1164.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity SubBytes_tb is
end entity;

architecture SubBytes_tb_arch of SubBytes_tb is
    component SubBytes is
        port (
          SubBytes_i : in type_state;
          SubBytes_o : out type_state);
    end component;
signal SubBytes_is :type_state;
signal SubBytes_os :type_state;
begin
DUT : SubBytes
port map (
    SubBytes_i => SubBytes_is,
    SubBytes_o => SubBytes_os
);
--- vecteurs de test
SubBytes_is <= ((X"01",X"02",X"03",X"04"),
                (X"11",X"12",X"13",X"14"),
                (X"31",X"32",X"33",X"34"),
                (X"41",X"42",X"43",X"44"));
end architecture;
