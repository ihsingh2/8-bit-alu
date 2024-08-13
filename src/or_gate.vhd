library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end or_gate;

architecture Dataflow of or_gate is
begin
    C <= A or B;
end Dataflow;
