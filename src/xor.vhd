library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is
	port(
  		A: in std_logic_vector (7 downto 0);
  		B: in std_logic_vector (7 downto 0);
		C: out std_logic_vector (7 downto 0));
end xor_gate;

architecture Dataflow of xor_gate is
begin
	C <= A xor B;
end Dataflow;
