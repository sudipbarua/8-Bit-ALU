----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2020 11:25:29 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           OPC : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

signal wYAL, wYRL : STD_LOGIC_VECTOR (7 downto 0);
signal OEAn, OERn : STD_LOGIC;

component al8 
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           OPC : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component al8;

component rt8
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           OPC : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component rt8;

component BUFT8
  Port (A : in std_logic_vector (7 downto 0);
        OEn : in std_logic;
        Y : out std_logic_vector (7 downto 0));
end component BUFT8;

begin

    al8_comp : al8 port map(
    A => A, 
    B => B,
    OPC => OPC,
    Y => wYAL);    
    
    rt8_comp : rt8 port map (
    A => A,
    OPC => OPC,
    Y => wYRL);
    
    buft8_1 : BUFT8 port map (
    A => wYAL,
    OEn => OEAn,
    Y => Y);
    
    buft8_2 : BUFT8 port map (
    A => wYRL,
    OEn => OERn,
    Y => Y);
    
    --decoder logic
    OEAn <= OPC(0);
    OERn <= not OPC (0);  
    
    
end Behavioral;
