library IEEE;
use IEEE.std_logic_1164.all;

entity right_shift is
    port(
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0));
end right_shift;

architecture Behavioral of right_shift is
begin
    process(A)
    begin
        for j in 0 to 6 loop
            B(j) <= A(j+1);
        end loop;
        B(7) <= A(7);
    end process;
end Behavioral;
