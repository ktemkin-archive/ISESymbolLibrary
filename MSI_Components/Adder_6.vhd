--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_6 is
  generic(BusWidth : integer := 6);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        sum : out std_logic_vector(BusWidth - 1  downto 0);
        carry : out std_logic
      );
end Adder_6;

architecture Behavioral of Adder_6 is
begin
  q <= std_logic_vector(unsigned(a) + unsigned(b));
end Behavioral;
