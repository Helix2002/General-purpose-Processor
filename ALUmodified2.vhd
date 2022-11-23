LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.NUMERIC_STD.all;

ENTITY ALUmodified2 IS
PORT (Clock: in STD_LOGIC;
    A, B: in unsigned(7 DOWNTO 0);
    student_id: in unsigned(3 DOWNTO 0);
    OP: in unsigned (15 DOWNTO 0);
    Neg: out std_LOGIC;
    R1: out unsigned(3 DOWNTO 0);
    R2: out unsigned(3 DOWNTO 0));
END ALUmodified2 ;
ARCHITECTURE calculation of ALUmodified2  is
signal Reg1,Reg2,Result: unsigned(7 DOWNTO 0):= (others => '0');
signal Reg4: unsigned(0 to 7);
begin
Reg1 <= A;
Reg2 <= B;
process (Clock, OP)
        begin    
		  if(rising_edge(Clock)) THEN
		  
case OP is

	WHEN "0000000000000001" =>
	Result<=B-9;
	
	WHEN "0000000000000010" =>
	Result<= B(3)&B(2)&B(1)&B(0)&B(7)&B(6)&B(5)&B(4);
	
	WHEN "0000000000000100" =>
	Result<= shift_left(A,2);

	WHEN "0000000000001000" =>
	Result<= A NAND B;
	
	WHEN "0000000000010000" =>
	if a > b then Result <= a;
	else Result <= b;
	end if;
	
	WHEN "0000000000100000" =>
	Result<= B(7)&( NOT B(6))&B(5)&(NOT B(4))&B(3)&(NOT B(2))&B(1)&(NOT B(0));
	
	WHEN "0000000001000000" =>
	Result<= null;
	
	WHEN "0000000010000000" =>
	Result<= A(7)&A(6)&A(5)&A(4)&B(3)&B(2)&B(1)&B(0);
	
	WHEN "0000000100000000" =>
	Result<= A;
	
WHEN OTHERS => Result <= "--------";

            end case;
        end if;
    end process;
R1 <= Result(3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);
end calculation;