library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tecladoNumerico is
    Port (
        CLK : in STD_LOGIC;
        BTN : in STD_LOGIC_VECTOR(3 downto 0);
		  ENA : in STD_LOGIC;
        BTN_Pressionado : out STD_LOGIC_VECTOR(3 downto 0) 
    );
end tecladoNumerico;

architecture Behavioral of tecladoNumerico is
	 
    component registrador is
        generic(W : NATURAL := 3);
        port (
            d : in STD_LOGIC_VECTOR(W-1 DOWNTO 0);
            clk : in STD_LOGIC;
            clrn : in STD_LOGIC;
            ena : in STD_LOGIC;
            q : out STD_LOGIC_VECTOR(W-1 DOWNTO 0)
        );
    end component;

begin
    Reg : registrador
        generic map (W => 3)
        port map (
            d => BTN,
            clk => CLK,
            clrn => '1',
            ena => ENA,
            q => BTN_Pressionado
        );
    
end Behavioral;
