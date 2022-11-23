LIBRARY ieee;
USE ieee.std_logic_1164.all;


Entity modSSEGv2 IS 
PORT(
    bcd: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    Cout: IN  STD_LOGIC;
    leds: OUT  STD_LOGIC_VECTOR(0 TO 6);
    neg: OUT STD_LOGIC_VECTOR(0 TO 6));
END modSSEGv2;

ARCHITECTURE Behaviour OF modSSEGv2 IS
BEGIN
    PROCESS(bcd)
    BEGIN
        CASE bcd IS -- abcdefg
            WHEN "0000" => leds <= "1110110";
            WHEN "0001" => leds <= "0110011";
            WHEN OTHERS => leds <= "-------";
        END CASE;
    END PROCESS;
    PROCESS(Cout)
    BEGIN 
        CASE Cout IS
            WHEN    '0' => neg <= "0000000";
            WHEN  '1' => neg <= "0000001";
        END CASE;
    END PROCESS;
END Behaviour;