library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.crypt_pack.all;
library LIB_RTL;

entity KeyExpansion_I_O_tb is
end entity;

architecture KeyExpansion_I_O_tb_arch of KeyExpansion_I_O_tb is
    component KeyExpansion_I_O is
        port (
            clock_i        : in std_logic;
            reset_i        : in std_logic;
            key_i          : in bit128;
            start_i        : in std_logic;
            expansion_key_o: out bit128 
        );
    end component;
    signal clock_is                 :std_logic := '0';
    signal reset_is,start_is        :std_logic;
    signal key_is, expansion_key_os :bit128;
begin
    DUT:KeyExpansion_I_O port map (
            clock_i         => clock_is,
            reset_i         => reset_is,
            key_i           => key_is,
            start_i         => start_is,
            expansion_key_o => expansion_key_os  
    );
clock_is   <= not(clock_is) after 50 ns;
reset_is   <= '0','1' after 10 ns;
start_is   <= '0','1' after 15 ns;
key_is     <= X"2b7e151628aed2a6abf7158809cf4f3c";
end architecture;