library IEEE;
use IEEE.std_logic_1164.all;

entity not_gate is
    port(
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0));
end not_gate;

architecture Dataflow of not_gate is
begin
    B <= not A;
end Dataflow;
