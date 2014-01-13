----------------------------------------------------------------------------------
-- Binghamton University
-- Engineer: Kyle J. Temkin <ktemkin@binghamton.edu>
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8_15 is
  generic(BusWidth : integer := 15);
  port(
        d0, d1, d2, d3, d4, d5, d6, d7 : in std_logic_vector(BusWidth - 1 downto 0);
        s : in std_logic_vector(2 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Mux8_15;

architecture Behavioral of Mux8_15 is
begin

  --Ugly hardcoded multiplexer.
  --Unfortunaely, these need to be hard coded, or ISE's schematic tool will consolidate
  --all of the inputs into a single bus.
  o <= 
    d0  when s = "000" else
    d1  when s = "001" else
    d2  when s = "010" else
    d3  when s = "011" else
    d4  when s = "100" else
    d5  when s = "101" else
    d6  when s = "110" else
    d7;

end Behavioral;

