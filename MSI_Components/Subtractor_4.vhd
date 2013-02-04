--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Subtractor_4 is
  generic(BusWidth : integer := 4);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        diff : out std_logic_vector(BusWidth - 1  downto 0);
        borrow : out std_logic
      );
end Subtractor_4;

architecture Behavioral of Subtractor_4 is
begin
  q <= std_logic_vector(unsigned(a) - unsigned(b));
end Behavioral;

