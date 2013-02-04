--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPONENT_NAME_PLACEHOLDER is
  generic(BusWidth : integer := BUS_WIDTH_PLACEHOLDER);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        diff : out std_logic_vector(BusWidth - 1  downto 0);
        borrow : out std_logic
      );
end COMPONENT_NAME_PLACEHOLDER;

architecture Behavioral of COMPONENT_NAME_PLACEHOLDER is
begin
  q <= std_logic_vector(unsigned(a) - unsigned(b));
end Behavioral;

