library IEEE;
use IEEE.std_logic_1164.all;

entity MUX is
    port(
        D0: in std_logic_vector (7 downto 0);
        D1: in std_logic_vector (7 downto 0);
        D2: in std_logic_vector (7 downto 0);
        D3: in std_logic_vector (7 downto 0);
        D4: in std_logic_vector (7 downto 0);
        D5: in std_logic_vector (7 downto 0);
        D6: in std_logic_vector (7 downto 0);
        D7: in std_logic_vector (7 downto 0);
        S: in std_logic_vector (2 downto 0);
        Q: out std_logic_vector (7 downto 0));
end MUX;

architecture Behavioral of MUX is
begin
    process(D0,D1,D2,D3,D4,D5,D6,D7,S)
    begin
        if (S(2) = '0') then
            if (S(1) = '0') then
                if (S(0) = '0') then
                    Q <= D0;
                else
                    Q <= D1;
                end if;
            else
                if (S(0) = '0') then
                    Q <= D2;
                else
                    Q <= D3;
                end if;
            end if;
        else
            if (S(1) = '0') then
                if (S(0) = '0') then
                    Q <= D4;
                else
                    Q <= D5;
                end if;
            else
                if (S(0) = '0') then
                    Q <= D6;
                else
                    Q <= D7;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
