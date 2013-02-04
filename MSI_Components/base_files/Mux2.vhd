----------------------------------------------------------------------------------
-- Binghamton University
-- Engineer: Kyle J. Temkin <ktemkin@binghamton.edu>
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPONENT_NAME_PLACEHOLDER is
  generic(BusWidth : integer := BUS_WIDTH_PLACEHOLDER);
  port(
        d0, d1 : in std_logic_vector(BusWidth - 1 downto 0)
        s : in std_logic_vector(3 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end COMPONENT_NAME_PLACEHOLDER;

architecture Behavioral of COMPONENT_NAME_PLACEHOLDER is
begin
  o <= d0 when sel = "0" else d1;
end Behavioral;

