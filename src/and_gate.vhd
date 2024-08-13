library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end and_gate;

architecture Dataflow of and_gate is
begin
    C <= A and B;
end Dataflow;
