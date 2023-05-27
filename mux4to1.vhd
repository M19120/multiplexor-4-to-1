
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;

entity mux2to1 is
    Port ( a : in std_logic; --
           b : in std_logic;
           c : in std_logic;
           d : in std_logic;
           selec: in std_logic_vector (1 downto 0); 
           output: out std_logic
           
          );
end mux2to1;

architecture Behavior of mux2to1 is
begin 
process(a,b,c,d,selec)
begin
case selec is 
when "00"=>output<=a;
when "01"=>output<=b;
when "10"=>output<=c;
when others=>output<=d;
end case;
end process;

end Behavior;
