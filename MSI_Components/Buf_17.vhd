--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buf_17 is
  generic(BusWidth : integer := 17);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Buf_17;

architecture Behavioral of Buf_17 is
begin
  o <= i;
end Behavioral;

