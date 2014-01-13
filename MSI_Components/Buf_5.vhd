--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buf_5 is
  generic(BusWidth : integer := 5);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Buf_5;

architecture Behavioral of Buf_5 is
begin
  o <= i;
end Behavioral;

