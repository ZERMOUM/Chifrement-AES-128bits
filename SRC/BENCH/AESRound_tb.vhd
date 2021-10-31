library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.crypt_pack.all;
library LIB_RTL;

entity AESRound_tb is
end entity;

architecture AESRound_tb_arch of AESRound_tb is
    component AESRound is
        port(text_i			    : in  bit128;
         currentkey_i		    : in  bit128;
         data_o			        : out bit128;
         clock_i		        : in  std_logic;
         resetb_i		        : in  std_logic;
         enableMixcolumns_i	    : in  std_logic;
         enableRoundcomputing_i : in  std_logic);
      end component;
    signal currentkey_is, text_is, data_os : bit128;
    signal  resetb_is, enableMixcolumns_is, enableRoundcomputing_is :std_logic;
    signal clock_is :std_logic :='0';
begin
    DUT:AESRound port map (
         text_i			        =>  text_is,
         currentkey_i	        =>  currentkey_is,	    
         data_o			        =>  data_os,   
         clock_i		        =>  clock_is,     
         resetb_i		        =>  resetb_is,
         enableMixcolumns_i     =>  enableMixcolumns_is,	    
         enableRoundcomputing_i => enableRoundcomputing_is
    );
    clock_is                <= not(clock_is) after 50 ns;
    resetb_is               <= '0','1' after 10 ns;
    enableRoundcomputing_is <= '0' after 10 ns;
    text_is                 <= X"45732d747520636f6e66696ee865203f";
    currentkey_is           <= X"2b7e151628aed2a6abf7158809cf4f3c";
    enableMixcolumns_is     <= '1' ;
end architecture AESRound_tb_arch;