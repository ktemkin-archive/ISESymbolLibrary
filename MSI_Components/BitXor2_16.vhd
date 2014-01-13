--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitXor2_16 is
  generic(BusWidth : integer := 16);
  port(
        --Data signals.
        i0 : in std_logic_vector(BusWidth - 1 downto 0);
        i1 : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end BitXor2_16;

architecture Behavioral of BitXor2_16 is
begin
  o <= i0 xor i1;
end Behavioral;

