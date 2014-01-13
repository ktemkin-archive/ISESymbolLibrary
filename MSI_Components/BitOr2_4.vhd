--
-- Bitwise OR template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitOr2_4 is
  generic(BusWidth : integer := 4);
  port(
        --Data signals.
        i0 : in std_logic_vector(BusWidth - 1 downto 0);
        i1 : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end BitOr2_4;

architecture Behavioral of BitOr2_4 is
begin
  o <= i0 or i1;
end Behavioral;

