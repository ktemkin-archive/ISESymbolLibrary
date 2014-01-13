----------------------------------------------------------------------------------
-- Binghamton University
-- Engineer: Kyle J. Temkin <ktemkin@binghamton.edu>
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4_20 is
  generic(BusWidth : integer := 20);
  port(
        d0, d1, d2, d3 : in std_logic_vector(BusWidth - 1 downto 0);
        s : in std_logic_vector(1 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Mux4_20;

architecture Behavioral of Mux4_20 is
begin

  --Ugly hardcoded multiplexer.
  --Unfortunaely, these need to be hard coded, or ISE's schematic tool will consolidate
  --all of the inputs into a single bus.
  o <= 
    d0  when s = "00" else
    d1  when s = "01" else
    d2  when s = "10" else
    d3;
 
end Behavioral;

