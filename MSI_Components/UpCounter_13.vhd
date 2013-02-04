----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:44 02/03/2013 
-- Design Name: 
-- Module Name:    RegParallelLoad - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UpCounter_13 is
  generic(BusWidth : integer := 13);
  port(
        --Control signals.
        clk : in std_logic;
        count : in std_logic;
        clear : in std_logic;

        --Data signals.
        d : in std_logic_vector(BusWidth - 1 downto 0);
        q : out std_logic_vector(BusWidth - 1 downto 0)
      );
end UpCounter_13;

architecture Behavioral of UpCounter_13 is
begin

  process(clk)
  begin

    --Proirity logic.
    if rising_edge(clk) then
      if clear = '1' then
        q <= (others => '0');
      elsif count = '1' then
        q <= std_logic_vector(unsigned(count) + 1);
      else
        q <= d;
    end if;


  end process;

end Behavioral;

