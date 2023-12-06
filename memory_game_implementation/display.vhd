library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display is
GENERIC(W : NATURAL := 3);
    Port (             
        Data : in STD_LOGIC_VECTOR(W-1 downto 0); 
        SegmentDisplay : out STD_LOGIC_VECTOR(6 downto 0) 
    );
end display;

architecture Behavioral of display is
    signal DisplaySignals : STD_LOGIC_VECTOR(6 downto 0);
begin
    process(Data)
    begin
        case Data is
					when "000" => DisplaySignals <= "0000000"; -- Display "0"
					when "001" => DisplaySignals <= "0110000"; -- Display "1"
					when "010" => DisplaySignals <= "1101101"; -- Display "2"
					when "011" => DisplaySignals <= "1111001"; -- Display "3"
					when "100" => DisplaySignals <= "0110011"; -- Display "4"
					when "101" => DisplaySignals <= "1011011"; -- Display "5"
					when "110" => DisplaySignals <= "1011111"; -- Display "6"
					when "111" => DisplaySignals <= "1111111"; -- Display "8"
			end case;
    end process;

    SegmentDisplay <= DisplaySignals;
end Behavioral;
