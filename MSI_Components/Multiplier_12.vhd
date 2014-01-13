--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_12 is
  generic(BusWidth : integer := 12);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        product : out std_logic_vector(BusWidth - 1  downto 0)
      );
end Multiplier_12;

architecture Behavioral of Multiplier_12 is
begin
  product <= std_logic_vector(unsigned(a) * unsigned(b));
end Behavioral;

