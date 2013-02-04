--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity COMPONENT_NAME_PLACEHOLDER is
  generic(BusWidth : integer := BUS_WIDTH_PLACEHOLDER);
  port(
        --Data signals.
        i : in std_logic_vector(BusWidth - 1 downto 0);
        o : in std_logic_vector(BusWidth - 1 downto 0)
      );
end COMPONENT_NAME_PLACEHOLDER;

architecture Behavioral of COMPONENT_NAME_PLACEHOLDER is
begin
  o <= i srl 1;
end Behavioral;

