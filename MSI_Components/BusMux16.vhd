----------------------------------------------------------------------------------
-- Binghamton University
-- Engineer: Kyle J. Temkin <ktemkin@binghamton.edu>
-- 
-- Create Date:    20:59:42 02/02/2013 
-- Design Name: 
-- Module Name:    Mux16 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BusMux16 is
  generic(BusWidth : integer := 8);
  port(
        i0, i1, i2, i3, i4, i5, i6, i7, 
        i8, i9, i10, i11, i12, i13, i14, i15 : in std_logic_vector(BusWidth - 1 downto 0);
        sel : in std_logic_vector(3 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end BusMux16;

architecture Behavioral of BusMux16 is
begin


end Behavioral;

