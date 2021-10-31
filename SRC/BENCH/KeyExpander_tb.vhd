library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity KeyExpander_tb is
end entity;

architecture KeyExpander_tb_arch of KeyExpander_tb is
    component KeyExpander is
        port(
            CurrentKey_i : in bit128;
            Rcon_i       : in bit8;
            keyExpander_o: out bit128
        );
    end component KeyExpander;
    signal CurrentKey_is,keyExpander_os :bit128;
    signal Rcon_is                      :bit8;
begin
DUT:KeyExpander port map (
    CurrentKey_i       => CurrentKey_is,
    Rcon_i             => Rcon_is,
    keyExpander_o      => keyExpander_os);
    
CurrentKey_is <= X"f2c295f27a96b9435935807a7359f67f";
Rcon_is       <= X"04";

end architecture;

