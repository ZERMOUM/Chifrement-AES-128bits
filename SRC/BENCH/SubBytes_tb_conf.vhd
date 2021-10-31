library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
--- configuration de testbench de SubBytes
configuration SubBytes_tb_conf of SubBytes_tb is 
 for SubBytes_tb_arch
    for DUT: SubBytes
        use configuration  LIB_RTL.SubBytes_conf;
    end for;

 end for;
 end SubBytes_tb_conf;
