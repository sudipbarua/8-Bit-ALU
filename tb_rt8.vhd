----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2020 11:37:39 AM
-- Design Name: 
-- Module Name: tb_rt8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_rt8 is
end tb_rt8;

architecture tb_a of tb_rt8 is
    component rt8 is 
        port (A : in STD_LOGIC_VECTOR (7 downto 0);
           OPC : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    SIGNAL inA, OPC, outY : STD_LOGIC_VECTOR (7 downto 0);
begin
    dut : rt8 port map (A=>inA, OPC=> OPC, Y=>outY);
    Test_P: process
    begin
        OPC <= x"00";
        inA <= x"AA";
        wait for 100ns;
        OPC <= x"23";
        inA <= x"48";
        wait for 50ns;
        OPC <= x"03";
        inA <= x"63";
        wait for 50ns;
        inA <= x"55";
        wait for 50ns;
        OPC <= x"23";
        wait for 50ns;
        OPC <= x"00";
        wait;   
   end process Test_P;     

end tb_a;
