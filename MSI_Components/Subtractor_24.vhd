--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Subtractor_24 is
  generic(BusWidth : integer := 24);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        diff : out std_logic_vector(BusWidth - 1  downto 0);
        borrow : out std_logic
      );
end Subtractor_24;

architecture Behavioral of Subtractor_24 is
begin
  q <= std_logic_vector(unsigned(a) - unsigned(b));
end Behavioral;
