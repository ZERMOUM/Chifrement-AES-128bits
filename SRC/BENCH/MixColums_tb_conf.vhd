library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;

configuration MixColums_tb_conf of MixColums_tb is 
 for MixColums_tb_arch
    for DUT: MixColums
        use configuration  LIB_RTL.MixColums_conf;
    end for;

 end for;
 end MixColums_tb_conf;