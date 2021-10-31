library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use LIB_AES.Crypt_Pack.all;
library LIB_RTL;
use LIB_RTL.all;

entity KeyExpander_FSM_Moor is
    port (
        clock_i  : in std_logic;
        reset_i  : in std_logic;
        start_i  : in std_logic;
        counter_i: in bit4;
        enable_o : out std_logic;
        resetb_o : out std_logic
    );
end entity KeyExpander_FSM_Moor;

architecture KeyExpander_FSM_Moor_arch of KeyExpander_FSM_Moor is
--- création d'un type state_type
type state_type is (init, count ,done );
--- les signaux interne
signal present_state, next_state :state_type;
--- Machine à etats (Machine de Moor)
begin
    sequentiel : process(clock_i, reset_i)
    begin
      if reset_i = '0' then
        present_state <= init;
      elsif rising_edge(clock_i) then
        present_state <= next_state;
      end if;
    end process;
--- process combinatoire pour les different etats de la machine
    C0 : process(present_state, start_i, counter_i)
  begin
    case present_state is
      when init=>
        if start_i = '1' then
          next_state <= count;
        else
          next_state <= init;
        end if;
      when count => 
       if counter_i = "1001" then        
        next_state <= done;
       else 
        next_state <=count; 
        end if;
      when done => 
        if start_i = '1' then        
         next_state <= init;
        else 
         next_state <= done; 
         end if;
      when others =>
         next_state <= init; 
    end case;       
     end process;
--- process cobinatoire pour gérer les sortie selon l'etats present
    C1 : process(present_state)
     begin
       case present_state is
         when init =>
         enable_o  <= '0';
         resetb_o  <= '0';
         when count =>
         enable_o  <= '1';
         resetb_o  <= '1';
         when done  =>
         enable_o  <= '0';
         resetb_o  <= '1';
         when others => 
         enable_o  <= '0';
         resetb_o  <= '0';
       end case;
    end process;

end architecture KeyExpander_FSM_Moor_arch;