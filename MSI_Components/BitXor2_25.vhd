--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitXor2_25 is
  generic(BusWidth : integer := 25);
  port(
        --Data signals.
        i0 : in std_logic_vector(BusWidth - 1 downto 0);
        i1 : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end BitXor2_25;

architecture Behavioral of BitXor2_25 is
begin
  o <= i0 xor i1;
end Behavioral;

