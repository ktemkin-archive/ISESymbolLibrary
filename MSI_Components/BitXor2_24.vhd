--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitXor2_24 is
  generic(BusWidth : integer := 24);
  port(
        --Data signals.
        i0 : in std_logic_vector(BusWidth - 1 downto 0);
        i1 : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic
      );
end BitXor2_24;

architecture Behavioral of BitXor2_24 is
begin
  o <= i0 xor i1;
end Behavioral;
