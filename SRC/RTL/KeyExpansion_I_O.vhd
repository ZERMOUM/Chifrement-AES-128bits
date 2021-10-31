library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity KeyExpansion_I_O is
    port (
        clock_i         : in std_logic;
        reset_i         : in std_logic;
        key_i           : in bit128;
        start_i         : in std_logic;
        expansion_key_o : out bit128 
    );
end entity;

architecture KeyExpansion_I_O_arch of KeyExpansion_I_O is

--- instanciation de composante Counter
component Counter is
    port(reset_i  : in  std_logic;
         enable_i : in  std_logic;
         clock_i  : in  std_logic;
         count_o  : out bit4);
  end component Counter;
--- instanciation de composant Machine de Moor
component KeyExpander_FSM_Moor is
  port (
      clock_i   : in std_logic;
      reset_i   : in std_logic;
      start_i   : in std_logic;
      counter_i : in bit4;
      enable_o  : out std_logic;
      resetb_o  : out std_logic
  );
end component KeyExpander_FSM_Moor;
--- instanciation de composante KeyExpander 
  component KeyExpander is
    port(
        CurrentKey_i  : in bit128;
        Rcon_i        : in bit8;
        keyExpander_o : out bit128
    );
end component KeyExpander;
--- les sgnaux interne
signal counter_s                           :bit4;
signal Rcon_s                              : bit8;
signal keyexpander_o_s,keyexpander_s,key_s : bit128;
signal enable_s,reset_s                    : std_logic;
signal round_s : natural range 0 to 10;

begin
--- Multiplixeur 
  key_s <= key_i when counter_s = "0000"  else keyexpander_o_s;
--- convertire la valeur de counter en intergre pour séléctionner le Rcon de chaque round
  round_s <= to_integer(unsigned(counter_s));
  Rcon_s <= Rcon(round_s);

P0: process(clock_i,reset_i,enable_s,keyexpander_s)
begin
  if(reset_i ='0') then 
    keyexpander_o_s <= (others => '0');
  elsif rising_edge(clock_i) then 
      if (enable_s = '1') then 
          keyexpander_o_s <= keyexpander_s;
      end if;
    end if;
  end process P0;

  Compteur: counter port map (
    reset_i  => reset_s ,
    enable_i => enable_s,
    clock_i  => clock_i,
    count_o  => counter_s);

  KExpander: KeyExpander port map (
    CurrentKey_i    => key_s,
    Rcon_i          => Rcon_s,
    keyExpander_o   => keyexpander_s);

  KExpFSM: KeyExpander_FSM_Moor port map (
      clock_i   => clock_i,
      reset_i   => reset_i,
      start_i   => start_i,
      counter_i => counter_s,
      enable_o  => enable_s,
      resetb_o  => reset_s);

  expansion_key_o <= key_s;
end architecture;