--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ShiftRightLogical_25 is
  generic(BusWidth : integer := 25);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : in std_logic_vector(BusWidth - 1 downto 0)
      );
end ShiftRightLogical_25;

architecture Behavioral of ShiftRightLogical_25 is
begin
  o <= i srl 1;
end Behavioral;
