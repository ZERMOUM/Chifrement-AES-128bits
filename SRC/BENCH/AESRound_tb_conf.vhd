library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
-- configuration de testbench de AESRound
configuration AESRound_tb_conf of AESRound_tb is 
 for AESRound_tb_arch
 
    for DUT: AESRound
        use configuration  LIB_RTL.AESRound_conf;
    end for;

 end for;
 end AESRound_tb_conf;