library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display is
GENERIC(W : NATURAL := 3);
    Port (
        CLK : in STD_LOGIC;             
        Data : in STD_LOGIC_VECTOR(W-1 downto 0); 
        SegmentDisplay : out STD_LOGIC_VECTOR(6 downto 0) 
    );
end display;

architecture Behavioral of display is
    signal DisplaySignals : STD_LOGIC_VECTOR(6 downto 0);
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            case Data is
					when "000" => DisplaySignals <= "1111110"; -- Display "0"
					when "001" => DisplaySignals <= "0110000"; -- Display "1"
					when "010" => DisplaySignals <= "1101101"; -- Display "2"
					when "011" => DisplaySignals <= "1111001"; -- Display "3"
					when "100" => DisplaySignals <= "0110011"; -- Display "4"
					when "101" => DisplaySignals <= "1011011"; -- Display "5"
					when "110" => DisplaySignals <= "1011111"; -- Display "6"
					when "111" => DisplaySignals <= "1110000"; -- Display "7"
            end case;
        end if;
    end process;

    SegmentDisplay <= DisplaySignals;
end Behavioral;
