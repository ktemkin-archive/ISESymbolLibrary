--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ShiftRightLogical_27 is
  generic(BusWidth : integer := 27);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end ShiftRightLogical_27;

architecture Behavioral of ShiftRightLogical_27 is
begin
  o <= '0' & i(BusWidth - 1 downto 1);
end Behavioral;

