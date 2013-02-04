--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ShiftRightLogical_17 is
  generic(BusWidth : integer := 17);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : in std_logic_vector(BusWidth - 1 downto 0)
      );
end ShiftRightLogical_17;

architecture Behavioral of ShiftRightLogical_17 is
begin
  o <= i srl 1;
end Behavioral;

