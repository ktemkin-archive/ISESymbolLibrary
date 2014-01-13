--
-- Multiplier, with Overflow 
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_Overflow_23 is
  generic(BusWidth : integer := 23);
  port(
        --Data signals.
        a : in unsigned(BusWidth - 1 downto 0);
        b : in unsigned(BusWidth - 1 downto 0);
        product : out unsigned(BusWidth - 1  downto 0);
        overflow: out std_logic
      );
end Multiplier_Overflow_23;

architecture Behavioral of Multiplier_Overflow_23 is
  signal full_product : unsigned(BusWidth * 2 - 1 downto 0);
begin

  --Compute the full product, up to the maximum possible amount of bits.
  full_product <= a * b;
  
  --And truncate it to the desired size.
  product <= full_product(BusWidth - 1 downto 0);

  --Determine if overflow occurred by checking for a '1' in any of the truncated bits.
  overflow <= or_reduce(std_logic_vector(full_product(full_product'high downto BusWidth)));

end Behavioral;

