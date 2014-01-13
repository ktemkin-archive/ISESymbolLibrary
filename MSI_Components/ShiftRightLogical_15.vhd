--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ShiftRightLogical_15 is
  generic(BusWidth : integer := 15);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end ShiftRightLogical_15;

architecture Behavioral of ShiftRightLogical_15 is
begin
  o <= '0' & i(BusWidth - 1 downto 1);
end Behavioral;

