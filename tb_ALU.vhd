----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2020 06:11:12 PM
-- Design Name: 
-- Module Name: tb_ALU - Behavioral
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

entity tb_ALU is
end tb_ALU;

architecture test_ALU of tb_ALU is
component ALU 
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           OPC : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal A, B, OPC, Y : STD_LOGIC_VECTOR (7 downto 0);

begin
DUT: ALU port map (A, B, OPC, Y);

    test_ALU_P : process is 
    begin
        A <= "00001111"; B <= "00000001";  
        OPC <= x"44"; wait for 10ns;
        OPC <= x"54"; wait for 10ns;
        OPC <= x"64"; wait for 10ns;
        OPC <= x"04"; wait for 10ns;
        OPC <= x"14"; wait for 10ns;
        A <= X"40"; B <= x"12";
        OPC <= x"24"; wait for 10ns;
        OPC <= x"94"; wait for 10ns;
        OPC <= x"03"; wait for 10ns;
        OPC <= x"23"; wait for 10ns;
        OPC <= x"23"; wait for 10ns;
        OPC <= x"23"; wait for 10ns;
        OPC <= x"23"; wait for 10ns;
        OPC <= x"00"; wait for 10ns;
        wait;
    end process test_ALU_P;
end test_ALU;
