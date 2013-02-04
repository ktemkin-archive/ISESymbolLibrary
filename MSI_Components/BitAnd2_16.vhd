--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitAnd2_16 is
  generic(BusWidth : integer := 16);
  port(
        --Data signals.
        i0 : in std_logic_vector(BusWidth - 1 downto 0);
        i1 : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic
      );
end BitAnd2_16;

architecture Behavioral of BitAnd2_16 is
begin
  eq <= '1' when (a = b) else '0';
end Behavioral;

