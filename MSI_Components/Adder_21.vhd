--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_21 is
  generic(BusWidth : integer := 21);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        sum : out std_logic_vector(BusWidth - 1  downto 0);
        carry : out std_logic
      );
end Adder_21;

architecture Behavioral of Adder_21 is
begin
  q <= std_logic_vector(unsigned(a) + unsigned(b));
end Behavioral;
