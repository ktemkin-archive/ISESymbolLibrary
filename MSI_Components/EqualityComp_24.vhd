--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EqualityComp_24 is
  generic(BusWidth : integer := 24);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        eq : out std_logic
      );
end EqualityComp_24;

architecture Behavioral of EqualityComp_24 is
begin
  eq <= '1' when (a = b) else '0';
end Behavioral;

