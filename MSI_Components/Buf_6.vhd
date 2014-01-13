--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buf_6 is
  generic(BusWidth : integer := 6);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Buf_6;

architecture Behavioral of Buf_6 is
begin
  o <= i;
end Behavioral;

