library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
--- configuration de testbecnh de keyExpansion_I_O
configuration keyExpansion_I_O_tb_conf of keyExpansion_I_O_tb is 
 for keyExpansion_I_O_tb_arch
 
    for DUT: keyExpansion_i_o
        use configuration  LIB_RTL.keyExpansion_I_O_conf;
    end for;

 end for;
 end keyExpansion_I_O_tb_conf; 


