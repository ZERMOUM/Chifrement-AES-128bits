library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;

configuration SubBytes_conf of SubBytes is 
 for SubBytes_arch
    for  G1 
        for G2 
            for all:SBox
                use entity LIB_RTL.SBox(SBox_arch);
            end for;
        end for;
    end for;

 end for;
 end SubBytes_conf;
