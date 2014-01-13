--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_26 is
  generic(BusWidth : integer := 26);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        product : out std_logic_vector(BusWidth - 1  downto 0)
      );
end Multiplier_26;

architecture Behavioral of Multiplier_26 is
begin
  product <= std_logic_vector(unsigned(a) * unsigned(b));
end Behavioral;

