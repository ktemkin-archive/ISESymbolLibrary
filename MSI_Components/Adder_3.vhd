--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder_3 is
  generic(BusWidth : integer := 3);
  port(
        --Data signals.
        a : in unsigned(BusWidth - 1 downto 0);
        b : in unsigned(BusWidth - 1 downto 0);
        sum : out unsigned(BusWidth - 1  downto 0);
        carry : out std_logic
      );
end Adder_3;

architecture Behavioral of Adder_3 is
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

