library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.crypt_pack.all;
library LIB_RTL;

entity AESRound is
    port(text_i			    : in  bit128;
	 currentkey_i		    : in  bit128;
	 data_o			        : out bit128;
	 clock_i		        : in  std_logic;
	 resetb_i		        : in  std_logic;
	 enableMixcolumns_i	    : in  std_logic;
	 enableRoundcomputing_i : in  std_logic);
  end entity;

  architecture AESRound_arch of AESRound is
--- instanciation de composant SubBytes
    component SubBytes is
        port (
            SubBytes_i : in type_state;
            SubBytes_o : out type_state);
    end component;
--- instanciation de composant ShifteRow
    component ShiftRows is
        port (
            shiftrows_i :in type_state;
            shiftrows_o :out type_state);
    end component ShiftRows;
--- instanciation de composant MixColums
    component MixColums is
        port (
           MixColums_i :in type_state;
           MixColums_o :out type_state
        );
    end component MixColums;
--- instanciation composant AddRoundKey
component AddRoundKey is
    port (
        state_i :in type_state;
        key_i   :in type_key;
        state_o :out type_state);
end component AddRoundKey;
--- les signaux interne
  signal currentkey_i_s      : type_key;
  signal data_conv_s         : bit128;
  signal text_conv_s, MixColums_o_s, shiftrows_o_s, SubBytes_o_s, inputAddRoundkey_s, outputAddRoundkey_s, data_s :type_state;
  begin
--- conversion bit128 ==> type_state et l'inverse
    Boucle0: for i in 0 to 3 generate 
        Boucle1: for j in 0 to 3 generate 
            currentkey_i_s(i)(j)    <= currentkey_i(127 -(i*32+j*8) downto 128 -(i*32+(j+1)*8));
            text_conv_s(i)(j)       <= text_i(127 -(i*32+j*8) downto 128 -(i*32+(j+1)*8));
            data_conv_s(127 -(i*32+j*8) downto 128 -(i*32+(j+1)*8)) <= data_s(i)(j);
        end generate Boucle1;
    end generate Boucle0;
--- caplage des composants
SBytes: SubBytes port map (
        SubBytes_i => data_s ,
        SubBytes_o  => SubBytes_o_s);
ShRow: ShiftRows port map (
       shiftrows_i => SubBytes_o_s,
       shiftrows_o => shiftrows_o_s);
MColums: MixColums port map (
         MixColums_i => shiftrows_o_s,
         MixColums_o   => MixColums_o_s);
--- Multiplixeur pour la séléction de l'entrée
inputAddRoundkey_s <= text_conv_s when enableRoundcomputing_i = '0'
                else MixColums_o_s when enableMixcolumns_i = '1'
                else shiftrows_o_s when enableMixcolumns_i = '0';

AddroundK: AddRoundKey port map (
           state_i => inputAddRoundkey_s, 
           key_i   => currentkey_i_s,
           state_o => outputAddRoundkey_s );
--- Registre    
REG: process(clock_i,resetb_i)
        begin
    if (resetb_i = '0') then
        B1: for i in 0 to 3 loop
            B2: for j in 0 to 3 loop
                data_s(i)(j) <= X"00"; 
            end loop B2;
        end loop B1; 
        elsif(rising_edge(clock_i)) then
            data_s <= outputAddRoundkey_s;
    end if;
    end process REG; 

    data_o <= data_conv_s ;
        
  end architecture AESRound_arch;