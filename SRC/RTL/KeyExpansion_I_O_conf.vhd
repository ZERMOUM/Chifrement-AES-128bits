library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
--- configuration de keyExpansion_I_O
configuration keyExpansion_I_O_conf of keyExpansion_I_O is
        for keyExpansion_I_O_arch 

        for all :KeyExpander_FSM_Moor
        use entity LIB_RTL.KeyExpander_FSM_Moor(KeyExpander_FSM_Moor_arch);
        end for;

        for all :KeyExpander
        use entity LIB_RTL.KeyExpander(KeyExpander_arch);
        end for;

        --for all : Counter
        --use entity LIB_RTL.Counter(Counter_arch);
        --end for;

    end for;
end configuration keyExpansion_I_O_conf;