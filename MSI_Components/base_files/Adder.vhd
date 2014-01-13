--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity COMPONENT_NAME_PLACEHOLDER is
  generic(BusWidth : integer := BUS_WIDTH_PLACEHOLDER);
  port(
        --Data signals.
        a : in unsigned(BusWidth - 1 downto 0);
        b : in unsigned(BusWidth - 1 downto 0);
        sum : out unsigned(BusWidth - 1  downto 0);
        carry : out std_logic
      );
end COMPONENT_NAME_PLACEHOLDER;

architecture Behavioral of COMPONENT_NAME_PLACEHOLDER is
  signal a_padded, b_padded, with_carry : unsigned(BusWidth downto 0);
begin
  --Pad A and B to 9 bits.
  a_padded <= '0' & a;
  b_padded <= '0' & b;

  with_carry <= a + b;

  --Break the result into sum and carry.
  sum <= with_carry(BusWidth - 1 downto 0);
  carry <= with_carry(BusWidth);

end Behavioral;

