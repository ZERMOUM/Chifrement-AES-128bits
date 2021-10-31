library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
--- Configuration de AES
configuration AES_conf of AES is
    for AES_arch

        for all : KeyExpansion_I_O
        use entity LIB_RTL.KeyExpansion_I_O(KeyExpansion_I_O_arch);
        end for;

        for all : FSM_AES
        use entity LIB_RTL.FSM_AES(FSM_AES_arch);
        end for;

        for all : Counter
        use entity LIB_RTL.Counter(Counter_arch);
        end for;

        for all : AESRound
        use entity LIB_RTL.AESRound(AESRound_arch);
        end for;

    end for;
end configuration ;


    