--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_24 is
  generic(BusWidth : integer := 24);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        sum : out std_logic_vector(BusWidth - 1  downto 0);
        carry : out std_logic
      );
end Adder_24;

architecture Behavioral of Adder_24 is
begin
  q <= std_logic_vector(unsigned(a) + unsigned(b));
end Behavioral;

