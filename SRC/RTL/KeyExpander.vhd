library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity KeyExpander is
    port(
        CurrentKey_i      : in bit128;
        Rcon_i            : in bit8;
        keyExpander_o     : out bit128
    );
end entity KeyExpander;

architecture KeyExpander_arch of KeyExpander is
-- definir une nouveau  type (state) tableau de 4 colonnes
    type state is array(0 to 3) of column_state;
-- instanciation de composonte SBox
    component SBox
    port(
        Sbox_i : in bit8;
        Sbox_o : out bit8
    );
    end component;
-- les signaux interne 
    signal Word_i_s             : state;
    signal Word_o_s             : state;
    signal RotWord_s            : column_state;
    signal SubBytesWord_s       : column_state;
    signal rcon_s               : column_state;

    begin
--- le tableau Rcon
        rcon_s(0) <= Rcon_i;
        rcon_s(1) <= X"00";
        rcon_s(2) <= X"00";
        rcon_s(3) <= X"00"; 
--- conversion de 128bits à type state
        B0 : for i in 0 to 3 generate
            B01 : for j in 0 to 3 generate
                Word_i_s(i)(j) <=  currentkey_i(127 -(i*32+j*8) downto 128 -(i*32+(j+1)*8));
            end generate B01;
        end generate B0;
--- rotation de la dernier colonne de tableau (4x4)
        B1 : for i in 0 to 3 generate
                 RotWord_s(i) <= Word_i_s(3)((i+1)mod 4);
        end generate B1;
--- instantiation de SBox
        B2 : for i in 0 to 3 generate
            SB: SBox port map (
                Sbox_i => RotWord_s(i),
                Sbox_o => SubBytesWord_s(i));
        end generate B2;
--- application de xor entre les colonnes
            Word_o_s(0) <= Word_i_s(0) xor SubBytesWord_s xor rcon_s;
        B3 : for i in 1 to 3 generate
            Word_o_s(i) <= Word_i_s(i) xor Word_o_s(i-1)  ;
        end generate B3;
-- convesion de key en 128bits 
        B4 : for i in 0 to 3 generate
            B41 : for j in 0 to 3 generate
           keyExpander_o(127 -(i*32+j*8) downto 128 -(i*32+(j+1)*8))<= Word_o_s(i)(j);
            end generate B41;
        end generate B4;

    end architecture KeyExpander_arch;