--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_18 is
  generic(BusWidth : integer := 18);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        product : out std_logic_vector(BusWidth - 1  downto 0)
      );
end Multiplier_18;

architecture Behavioral of Multiplier_18 is
begin
  product <= std_logic_vector(unsigned(a) * unsigned(b));
end Behavioral;

