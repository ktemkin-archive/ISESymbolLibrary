--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buf_32 is
  generic(BusWidth : integer := 32);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Buf_32;

architecture Behavioral of Buf_32 is
begin
  o <= i;
end Behavioral;

