--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ShiftRightLogical_18 is
  generic(BusWidth : integer := 18);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : in std_logic_vector(BusWidth - 1 downto 0)
      );
end ShiftRightLogical_18;

architecture Behavioral of ShiftRightLogical_18 is
begin
  o <= i srl 1;
end Behavioral;

