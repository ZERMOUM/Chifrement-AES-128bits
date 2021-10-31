library IEEE;
use IEEE.std_logic_1164.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity MixColums_tb is
end entity;

architecture MixColums_tb_arch of MixColums_tb is
    component MixColums is
        port (
           MixColums_i :in type_state;
           MixColums_o :out type_state
        );
    end component MixColums; 
signal  MixColums_is : type_state;
signal  MixColums_os : type_state;
begin

  DUT: MixColums
  port map (
    MixColums_i => MixColums_is,
    MixColums_o => MixColums_os
  );
    --- vecteurs de test 
  MixColums_is<= ((X"9f",X"4c",X"a6" ,X"f8" ),
                 (X"19", X"81" ,X"ac" ,X"d7"),
                 (X"10" ,X"a8" ,X"07" ,X"c8"), 
                 (X"7B" ,X"aa" ,X"dd" ,X"8e"));
end architecture;