--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buf_10 is
  generic(BusWidth : integer := 10);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Buf_10;

architecture Behavioral of Buf_10 is
begin
  o <= i;
end Behavioral;

