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
        diff : out unsigned(BusWidth - 1  downto 0);
        borrow : out std_logic
      );
end COMPONENT_NAME_PLACEHOLDER;

architecture Behavioral of COMPONENT_NAME_PLACEHOLDER is
  signal a_padded, b_padded, with_borrow : unsigned(BusWidth downto 0);
begin

  --Bit pad A and B to create a signal with room for the borrow out.
  a_padded <= '0' & a;
  b_padded <= '0' & b;

  --Perform the subtraction...
  with_borrow <= a_padded - b_padded;

  --And break into into the difference and borrow.
  diff <= with_borrow(BusWidth - 1 downto 0);
  borrow <= with_borrow(BusWidth);
end Behavioral;

