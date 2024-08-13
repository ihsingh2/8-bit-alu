library IEEE;
use IEEE.std_logic_1164.all;

entity adder is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end adder;

architecture Behavioral of adder is
begin
    process(A,B)
    variable u: std_logic_vector (8 downto 0);
    begin
        u(0) := '0';
        for j in 0 to 7 loop
            u(j+1) := (A(j) and B(j)) or (A(j) and u(j)) or (B(j) and u(j));
            C(j) <= A(j) xor B(j) xor u(j);
        end loop;
    end process;
end Behavioral;
