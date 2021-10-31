library IEEE;
use IEEE.std_logic_1164.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity SBox_tb is
end entity;

architecture SBox_tb_arch of SBox_tb is
    component SBox is
        port (
          SBox_i : in bit8;
          SBox_o : out bit8);
    end component;
signal SBox_is :bit8;
signal SBox_os :bit8;
begin
DUT : SBox
port map (
  SBox_i => SBox_is,
  SBox_o => SBox_os
);
  P_tb:process 
  begin
    SBox_is <= X"00" ; wait for 10 ns;
    SBox_is <= X"01" ; wait for 10 ns; 
    SBox_is <= X"03" ; wait for 10 ns;
    SBox_is <= X"04" ; wait for 10 ns;
    SBox_is <= X"05" ; wait for 10 ns;
    SBox_is <= X"06" ; wait for 10 ns;
    SBox_is <= X"07" ; wait for 10 ns;
    SBox_is <= X"08" ; wait for 10 ns;
    SBox_is <= X"09" ; wait for 10 ns;
    SBox_is <= X"0a" ; wait for 10 ns;
    SBox_is <= X"0b" ; wait for 10 ns;
    SBox_is <= X"0c" ; wait for 10 ns;
    SBox_is <= X"0d" ; wait for 10 ns;
    SBox_is <= X"0e" ; wait for 10 ns;
    SBox_is <= X"0f" ; wait for 10 ns;
     
    SBox_is <= X"10" ; wait for 10 ns;
    SBox_is <= X"11" ; wait for 10 ns;
    SBox_is <= X"12" ; wait for 10 ns;
    SBox_is <= X"13" ; wait for 10 ns;
    SBox_is <= X"14" ; wait for 10 ns;
    SBox_is <= X"15" ; wait for 10 ns;
    SBox_is <= X"16" ; wait for 10 ns;
    SBox_is <= X"17" ; wait for 10 ns;
    SBox_is <= X"18" ; wait for 10 ns;
    SBox_is <= X"19" ; wait for 10 ns;
    SBox_is <= X"1a" ; wait for 10 ns;
    SBox_is <= X"1b" ; wait for 10 ns;
    SBox_is <= X"1c" ; wait for 10 ns;
    SBox_is <= X"1d" ; wait for 10 ns;
    SBox_is <= X"1e" ; wait for 10 ns;
    SBox_is <= X"1f" ; wait for 10 ns;
    
    SBox_is <= X"20" ; wait for 10 ns;
    SBox_is <= X"21" ; wait for 10 ns;
    SBox_is <= X"22" ; wait for 10 ns;
    SBox_is <= X"23" ; wait for 10 ns;
    SBox_is <= X"24" ; wait for 10 ns;
    SBox_is <= X"25" ; wait for 10 ns;
    SBox_is <= X"26" ; wait for 10 ns;
    SBox_is <= X"27" ; wait for 10 ns;
    SBox_is <= X"28" ; wait for 10 ns;
    SBox_is <= X"29" ; wait for 10 ns;
    SBox_is <= X"2a" ; wait for 10 ns;
    SBox_is <= X"2b" ; wait for 10 ns;
    SBox_is <= X"2c" ; wait for 10 ns;
    SBox_is <= X"2d" ; wait for 10 ns;
    SBox_is <= X"2e" ; wait for 10 ns;
    SBox_is <= X"2f" ; wait for 10 ns;
    
    SBox_is <= X"30" ; wait for 10 ns;
    SBox_is <= X"31" ; wait for 10 ns;
    SBox_is <= X"32" ; wait for 10 ns;
    SBox_is <= X"33" ; wait for 10 ns;
    SBox_is <= X"34" ; wait for 10 ns;
    SBox_is <= X"35" ; wait for 10 ns;
    SBox_is <= X"36" ; wait for 10 ns;
    SBox_is <= X"37" ; wait for 10 ns;
    SBox_is <= X"38" ; wait for 10 ns;
    SBox_is <= X"39" ; wait for 10 ns;
    SBox_is <= X"3a" ; wait for 10 ns;
    SBox_is <= X"3b" ; wait for 10 ns;
    SBox_is <= X"3c" ; wait for 10 ns;
    SBox_is <= X"3d" ; wait for 10 ns;
    SBox_is <= X"3e" ; wait for 10 ns;
    SBox_is <= X"3f" ; wait for 10 ns;
    
    SBox_is <= X"40" ; wait for 10 ns;
    SBox_is <= X"41" ; wait for 10 ns;
    SBox_is <= X"42" ; wait for 10 ns;
    SBox_is <= X"43" ; wait for 10 ns;
    SBox_is <= X"44" ; wait for 10 ns;
    SBox_is <= X"45" ; wait for 10 ns;
    SBox_is <= X"46" ; wait for 10 ns;
    SBox_is <= X"47" ; wait for 10 ns;
    SBox_is <= X"48" ; wait for 10 ns;
    SBox_is <= X"49" ; wait for 10 ns;
    SBox_is <= X"4a" ; wait for 10 ns;
    SBox_is <= X"4b" ; wait for 10 ns;
    SBox_is <= X"4c" ; wait for 10 ns;
    SBox_is <= X"4d" ; wait for 10 ns;
    SBox_is <= X"4e" ; wait for 10 ns;
    SBox_is <= X"4f" ; wait for 10 ns;
    
    SBox_is <= X"50" ; wait for 10 ns;
    SBox_is <= X"51" ; wait for 10 ns;
    SBox_is <= X"52" ; wait for 10 ns;
    SBox_is <= X"53" ; wait for 10 ns;
    SBox_is <= X"54" ; wait for 10 ns;
    SBox_is <= X"55" ; wait for 10 ns;
    SBox_is <= X"56" ; wait for 10 ns;
    SBox_is <= X"57" ; wait for 10 ns;
    SBox_is <= X"58" ; wait for 10 ns;
    SBox_is <= X"59" ; wait for 10 ns;
    SBox_is <= X"5a" ; wait for 10 ns;
    SBox_is <= X"5b" ; wait for 10 ns;
    SBox_is <= X"5c" ; wait for 10 ns;
    SBox_is <= X"5d" ; wait for 10 ns;
    SBox_is <= X"5e" ; wait for 10 ns;
    SBox_is <= X"5f" ; wait for 10 ns;
    
    SBox_is <= X"60" ; wait for 10 ns;
    SBox_is <= X"61" ; wait for 10 ns;
    SBox_is <= X"62" ; wait for 10 ns;
    SBox_is <= X"63" ; wait for 10 ns;
    SBox_is <= X"64" ; wait for 10 ns;
    SBox_is <= X"65" ; wait for 10 ns;
    SBox_is <= X"66" ; wait for 10 ns;
    SBox_is <= X"67" ; wait for 10 ns;
    SBox_is <= X"68" ; wait for 10 ns;
    SBox_is <= X"69" ; wait for 10 ns;
    SBox_is <= X"6a" ; wait for 10 ns;
    SBox_is <= X"6b" ; wait for 10 ns;
    SBox_is <= X"6c" ; wait for 10 ns;
    SBox_is <= X"6d" ; wait for 10 ns;
    SBox_is <= X"6e" ; wait for 10 ns;
    SBox_is <= X"6f" ; wait for 10 ns;
     
    SBox_is <= X"70" ; wait for 10 ns;
    SBox_is <= X"71" ; wait for 10 ns;
    SBox_is <= X"72" ; wait for 10 ns;
    SBox_is <= X"73" ; wait for 10 ns;
    SBox_is <= X"74" ; wait for 10 ns;
    SBox_is <= X"75" ; wait for 10 ns;
    SBox_is <= X"76" ; wait for 10 ns;
    SBox_is <= X"77" ; wait for 10 ns;
    SBox_is <= X"78" ; wait for 10 ns;
    SBox_is <= X"79" ; wait for 10 ns;
    SBox_is <= X"7a" ; wait for 10 ns;
    SBox_is <= X"7b" ; wait for 10 ns;
    SBox_is <= X"7c" ; wait for 10 ns;
    SBox_is <= X"7d" ; wait for 10 ns;
    SBox_is <= X"7e" ; wait for 10 ns;
    SBox_is <= X"7f" ; wait for 10 ns;
     
    SBox_is <= X"80" ; wait for 10 ns;
    SBox_is <= X"81" ; wait for 10 ns;
    SBox_is <= X"82" ; wait for 10 ns;
    SBox_is <= X"83" ; wait for 10 ns;
    SBox_is <= X"84" ; wait for 10 ns;
    SBox_is <= X"85" ; wait for 10 ns;
    SBox_is <= X"86" ; wait for 10 ns;
    SBox_is <= X"87" ; wait for 10 ns;
    SBox_is <= X"88" ; wait for 10 ns;
    SBox_is <= X"89" ; wait for 10 ns;
    SBox_is <= X"8a" ; wait for 10 ns;
    SBox_is <= X"8b" ; wait for 10 ns;
    SBox_is <= X"8c" ; wait for 10 ns;
    SBox_is <= X"8d" ; wait for 10 ns;
    SBox_is <= X"8e" ; wait for 10 ns;
    SBox_is <= X"8f" ; wait for 10 ns;
   
    SBox_is <= X"90" ; wait for 10 ns;
    SBox_is <= X"91" ; wait for 10 ns;
    SBox_is <= X"92" ; wait for 10 ns;
    SBox_is <= X"93" ; wait for 10 ns;
    SBox_is <= X"94" ; wait for 10 ns;
    SBox_is <= X"95" ; wait for 10 ns;
    SBox_is <= X"96" ; wait for 10 ns;
    SBox_is <= X"97" ; wait for 10 ns;
    SBox_is <= X"98" ; wait for 10 ns;
    SBox_is <= X"99" ; wait for 10 ns;
    SBox_is <= X"9a" ; wait for 10 ns;
    SBox_is <= X"9b" ; wait for 10 ns;
    SBox_is <= X"9c" ; wait for 10 ns;
    SBox_is <= X"9d" ; wait for 10 ns;
    SBox_is <= X"9e" ; wait for 10 ns;
    SBox_is <= X"9f" ; wait for 10 ns;
    
    SBox_is <= X"a0" ; wait for 10 ns;
    SBox_is <= X"a1" ; wait for 10 ns;
    SBox_is <= X"a2" ; wait for 10 ns;
    SBox_is <= X"a3" ; wait for 10 ns;
    SBox_is <= X"a4" ; wait for 10 ns;
    SBox_is <= X"a5" ; wait for 10 ns;
    SBox_is <= X"a6" ; wait for 10 ns;
    SBox_is <= X"a7" ; wait for 10 ns;
    SBox_is <= X"a8" ; wait for 10 ns;
    SBox_is <= X"a9" ; wait for 10 ns;
    SBox_is <= X"aa" ; wait for 10 ns;
    SBox_is <= X"ab" ; wait for 10 ns;
    SBox_is <= X"ac" ; wait for 10 ns;
    SBox_is <= X"ad" ; wait for 10 ns;
    SBox_is <= X"ae" ; wait for 10 ns;
    SBox_is <= X"af" ; wait for 10 ns;
   
    SBox_is <= X"b0" ; wait for 10 ns;
    SBox_is <= X"b1" ; wait for 10 ns;
    SBox_is <= X"b2" ; wait for 10 ns;
    SBox_is <= X"b3" ; wait for 10 ns;
    SBox_is <= X"b4" ; wait for 10 ns;
    SBox_is <= X"b5" ; wait for 10 ns;
    SBox_is <= X"b6" ; wait for 10 ns;
    SBox_is <= X"b7" ; wait for 10 ns;
    SBox_is <= X"b8" ; wait for 10 ns;
    SBox_is <= X"b9" ; wait for 10 ns;
    SBox_is <= X"ba" ; wait for 10 ns;
    SBox_is <= X"bb" ; wait for 10 ns;
    SBox_is <= X"bc" ; wait for 10 ns;
    SBox_is <= X"bd" ; wait for 10 ns;
    SBox_is <= X"be" ; wait for 10 ns;
    SBox_is <= X"bf" ; wait for 10 ns;
    
    SBox_is <= X"c0" ; wait for 10 ns;
    SBox_is <= X"c1" ; wait for 10 ns;
    SBox_is <= X"c2" ; wait for 10 ns;
    SBox_is <= X"c3" ; wait for 10 ns;
    SBox_is <= X"c4" ; wait for 10 ns;
    SBox_is <= X"c5" ; wait for 10 ns;
    SBox_is <= X"c6" ; wait for 10 ns;
    SBox_is <= X"c7" ; wait for 10 ns;
    SBox_is <= X"c8" ; wait for 10 ns;
    SBox_is <= X"c9" ; wait for 10 ns;
    SBox_is <= X"ca" ; wait for 10 ns;
    SBox_is <= X"cb" ; wait for 10 ns;
    SBox_is <= X"cc" ; wait for 10 ns;
    SBox_is <= X"cd" ; wait for 10 ns;
    SBox_is <= X"ce" ; wait for 10 ns;
    SBox_is <= X"cf" ; wait for 10 ns;
    
    SBox_is <= X"d0" ; wait for 10 ns;
    SBox_is <= X"d1" ; wait for 10 ns;
    SBox_is <= X"d2" ; wait for 10 ns;
    SBox_is <= X"d3" ; wait for 10 ns;
    SBox_is <= X"d4" ; wait for 10 ns;
    SBox_is <= X"d5" ; wait for 10 ns;
    SBox_is <= X"d6" ; wait for 10 ns;
    SBox_is <= X"d7" ; wait for 10 ns;
    SBox_is <= X"d8" ; wait for 10 ns;
    SBox_is <= X"d9" ; wait for 10 ns;
    SBox_is <= X"da" ; wait for 10 ns;
    SBox_is <= X"db" ; wait for 10 ns;
    SBox_is <= X"dc" ; wait for 10 ns;
    SBox_is <= X"dd" ; wait for 10 ns;
    SBox_is <= X"de" ; wait for 10 ns;
    SBox_is <= X"df" ; wait for 10 ns;
     
    SBox_is <= X"e0" ; wait for 10 ns;
    SBox_is <= X"e1" ; wait for 10 ns;
    SBox_is <= X"e2" ; wait for 10 ns;
    SBox_is <= X"e3" ; wait for 10 ns;
    SBox_is <= X"e4" ; wait for 10 ns;
    SBox_is <= X"e5" ; wait for 10 ns;
    SBox_is <= X"e6" ; wait for 10 ns;
    SBox_is <= X"e7" ; wait for 10 ns;
    SBox_is <= X"e8" ; wait for 10 ns;
    SBox_is <= X"e9" ; wait for 10 ns;
    SBox_is <= X"ea" ; wait for 10 ns;
    SBox_is <= X"eb" ; wait for 10 ns;
    SBox_is <= X"ec" ; wait for 10 ns;
    SBox_is <= X"ed" ; wait for 10 ns;
    SBox_is <= X"ee" ; wait for 10 ns;
    SBox_is <= X"ef" ; wait for 10 ns;
  
    SBox_is <= X"f0" ; wait for 10 ns;
    SBox_is <= X"f1" ; wait for 10 ns;
    SBox_is <= X"f2" ; wait for 10 ns;
    SBox_is <= X"f3" ; wait for 10 ns;
    SBox_is <= X"f4" ; wait for 10 ns;
    SBox_is <= X"f5" ; wait for 10 ns;
    SBox_is <= X"f6" ; wait for 10 ns;
    SBox_is <= X"f7" ; wait for 10 ns;
    SBox_is <= X"f8" ; wait for 10 ns;
    SBox_is <= X"f9" ; wait for 10 ns;
    SBox_is <= X"fa" ; wait for 10 ns;
    SBox_is <= X"fb" ; wait for 10 ns;
    SBox_is <= X"fc" ; wait for 10 ns;
    SBox_is <= X"fd" ; wait for 10 ns;
    SBox_is <= X"fe" ; wait for 10 ns;
    SBox_is <= X"ff" ; wait for 10 ns;  
  end process P_tb;       
      
end architecture;
