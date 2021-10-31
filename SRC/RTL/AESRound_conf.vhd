library IEEE;
use IEEE.std_logic_1164.all;
library LIB_RTL;
--- configuration de AESRound
configuration AESRound_conf of AESRound is
    for AESRound_arch 

        for all :SubBytes
        use entity LIB_RTL.SubBytes(SubBytes_arch);
        end for;

        for all :ShiftRows
        use entity LIB_RTL.ShiftRows(ShiftRows_arch);
        end for;

        for all :MixColums
        use entity LIB_RTL.MixColums(MixColums_arch);
        end for;

        for all :AddRoundKey
        use entity LIB_RTL.AddRoundKey(AddRoundKey_arch);
        end for;

    end for;
end configuration;