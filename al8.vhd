----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2020 11:25:29 AM
-- Design Name: 
-- Module Name: al8 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity al8 is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           OPC : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end al8;

architecture al8_A of al8 is

begin
    process (A,B,OPC)
    begin
        case OPC is
            when x"44" => Y <= A or B;
            when x"54" => Y <= A and B;
            when x"64" => Y <= A xor B;
            when x"04" => Y <= A + 1;
            when x"14" => Y <= A - 1;
            when x"24" => Y <= A + B;
            when x"94" => Y <= A - B;
            when others => Y <= A;
        end case;
    end process;
end al8_A;
