library IEEE;
use IEEE.std_logic_1164.all;

entity subtractor is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end subtractor;

architecture Behavioral of subtractor is
begin
    process(A,B)
    variable u: std_logic_vector (8 downto 0);
    begin
        u(0) := '1';
        for j in 0 to 7 loop
            u(j+1) := (A(j) and (not B(j))) or (A(j) and u(j)) or ((not B(j)) and u(j));
            C(j) <= A(j) xor (not B(j)) xor u(j);
        end loop;
    end process;
end Behavioral;
