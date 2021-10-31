#!/bin/bash

export PROJECTNAME="."

# TO DO : test $PROJECTNAME
echo "the project location is : $PROJECTNAME"
echo "removing libs"
vdel -lib $PROJECTNAME/LIB/LIB_AES -all
vdel -lib $PROJECTNAME/LIB/LIB_RTL -all
vdel -lib $PROJECTNAME/LIB/LIB_BENCH -all

echo "creating library "
vlib $PROJECTNAME/LIB/LIB_AES
vmap LIB_AES $PROJECTNAME/LIB/LIB_AES
vlib $PROJECTNAME/LIB/LIB_RTL
vmap LIB_RTL $PROJECTNAME/LIB/LIB_RTL
vlib $PROJECTNAME/LIB/LIB_BENCH
vmap LIB_BENCH $PROJECTNAME/LIB/LIB_BENCH

echo "compile third party library"
vcom -work LIB_AES $PROJECTNAME/SRC/THIRDPARTY/CryptPack.vhd

echo "compile vhdl sources"
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/SBox.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/SubBytes.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/SubBytes_conf.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/AddRoundKey.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/ShiftRows.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/ProduitMatrix.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/MixColums.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/MixColums_conf.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/AESRound.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/AESRound_conf.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/KeyExpander.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/KeyExpander_FSM_Moor.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/KeyExpansion_I_O.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/KeyExpansion_I_O_conf.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/Counter.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/FSM_AES.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/AES.vhd
vcom -work LIB_RTL $PROJECTNAME/SRC/RTL/AES_conf.vhd

echo "compile vhdl test bench"
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/SBox_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/SubBytes_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/SubBytes_tb_conf.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/AddRoundKey_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/ShiftRows_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/MixColums_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/MixColums_tb_conf.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/AESRound_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/AESRound_tb_conf.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/KeyExpander_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/KeyExpansion_I_O_tb.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/keyExpansion_I_O_tb_conf.vhd
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/AES_tb.vhd 
vcom -work LIB_BENCH $PROJECTNAME/SRC/BENCH/AES_tb_conf.vhd

echo "compilation finished"

#echo "start simulation..."
# ATTENTION un seul VSIM decommenté à la fois!
#vsim  LIB_BENCH.AES_tb_conf &



