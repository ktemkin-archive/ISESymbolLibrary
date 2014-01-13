--
-- Bitwise OR template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitOr2_13 is
  generic(BusWidth : integer := 13);
  port(
        --Data signals.
        i0 : in std_logic_vector(BusWidth - 1 downto 0);
        i1 : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end BitOr2_13;

architecture Behavioral of BitOr2_13 is
begin
  o <= i0 or i1;
end Behavioral;

