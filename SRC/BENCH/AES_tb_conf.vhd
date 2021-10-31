library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
--- configuration de testbech de AES
configuration AES_tb_conf of AES_tb is 
 for AES_tb_arch
 
    for DUT: AES
        use configuration  LIB_RTL.AES_conf;
    end for;

 end for;
 end AES_tb_conf; 