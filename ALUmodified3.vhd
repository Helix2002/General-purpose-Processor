LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE. STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALUmodified3 IS
    PORT (Clk: IN STD_LOGIC;
            A,B : IN UNSIGNED(7 DOWNTO 0);
            STUDENT_ID: IN UNSIGNED(3 DOWNTO 0);
            OP:IN UNSIGNED(15 DOWNTO 0);
            NEG: OUT STD_LOGIC;
				Result: OUT unsigned(3 downto 0));
END ALUmodified3;

ARCHITECTURE calculation OF ALUmodified3 IS
    SIGNAL reg1,reg2: UNSIGNED(7 DOWNTO 0):=(others=>'0');
    SIGNAL Reg4: UNSIGNED(0 TO 7);
BEGIN 
    reg1<= A;
    reg2<= B;

PROCESS(Clk, OP)
BEGIN    IF(rising_edge(Clk)) THEN
    CASE OP IS 
   
    WHEN "0000000000000001" =>
	 	if (Student_id mod 2=0) then
						Result <= "0000"; -- N
					else 
						Result <= "0001"; -- Y
					end if;

    WHEN "0000000000000010" =>
     	if ( Student_id mod 2=0) then
						Result <= "0000"; -- N
					else 
						Result <= "0001"; -- Y
					end if;

    WHEN "0000000000000100" =>
    if ( Student_id mod 2=0) then
						Result <= "0000"; -- Y
					else 
						Result <= "0001"; -- N					
					end if;

    WHEN "0000000000001000" =>
       if ( Student_id mod 2=0) then
						Result <= "0000"; -- Y
					else 
						Result <= "0001"; -- N					
					end if;

    WHEN "0000000000010000" =>
       if ( Student_id mod 2=0) then
						Result <= "0000"; -- Y
					else 
						Result <= "0001"; -- N					
					end if;

   
    WHEN "0000000000100000" =>
      
 if ( Student_id mod 2=0) then
						Result <= "0000"; -- Y
					else 
						Result <= "0001"; -- N					
					end if;
       
    WHEN "0000000001000000" =>
					if ( Student_id mod 2=0) then
						Result <= "0000"; -- Y
					else 
						Result <= "0001"; -- N					
					end if;

    WHEN "0000000010000000" =>
      if ( Student_id mod 2=0) then
						Result <= "0000"; -- Y
					else 
						Result <= "0001"; -- N					
					end if;

    WHEN "0000000100000000" =>
       if ( Student_id mod 2=0) then
						Result <= "0000"; -- Y
					else 
						Result <= "0001"; -- N					
					end if;

    WHEN OTHERS => 
    END CASE;
END IF;
END PROCESS;
END CALCULATION;