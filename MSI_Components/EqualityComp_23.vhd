--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EqualityComp_23 is
  generic(BusWidth : integer := 23);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        eq : out std_logic
      );
end EqualityComp_23;

architecture Behavioral of EqualityComp_23 is
begin
  eq <= '1' when (a = b) else '0';
end Behavioral;

