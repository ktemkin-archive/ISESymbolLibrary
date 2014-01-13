--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buf_18 is
  generic(BusWidth : integer := 18);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Buf_18;

architecture Behavioral of Buf_18 is
begin
  o <= i;
end Behavioral;

