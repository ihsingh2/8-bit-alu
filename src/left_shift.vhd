library IEEE;
use IEEE.std_logic_1164.all;

entity left_shift is
    port(
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0));
end left_shift;

architecture Behavioral of left_shift is
begin
    process(A)
    begin
        for j in 6 downto 0 loop
            B(j+1) <= A(j);
        end loop;
        B(0) <= '0';
    end process;
end Behavioral;
