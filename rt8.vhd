----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2020 11:25:29 AM
-- Design Name: 
-- Module Name: rt8 - Behavioral
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

entity rt8 is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           OPC : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end rt8;

architecture rt8_A of rt8 is
begin
with OPC select 
    Y <= A(6 downto 0) & A (7) when "00100011",
         A(0) & A(7 downto 1) when "00000011",
         A when others;    
end rt8_A;
