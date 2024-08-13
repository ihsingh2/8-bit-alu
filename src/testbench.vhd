library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb of testbench is

component ALU is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        S: in std_logic_vector (2 downto 0);
        C: out std_logic_vector (7 downto 0));
end component;

signal A_in, B_in: std_logic_vector (7 downto 0);
signal S_in: std_logic_vector (2 downto 0);
signal C_out: std_logic_vector (7 downto 0);

begin
    DUT: ALU port map(A_in, B_in, S_in, C_out);
    process
    begin
        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "000";
        wait for 1 ns;
        assert(C_out = "00001000") report "Fail 000" severity error;

        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "001";
        wait for 1 ns;
        assert(C_out = "01101101") report "Fail 001" severity error;

        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "010";
        wait for 1 ns;
        assert(C_out = "01100101") report "Fail 010" severity error;

        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "011";
        wait for 1 ns;
        assert(C_out = "11010011") report "Fail 011" severity error;

        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "100";
        wait for 1 ns;
        assert(C_out = "01110101") report "Fail 100" severity error;

        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "101";
        wait for 1 ns;
        assert(C_out = "11100011") report "Fail 101" severity error;

        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "110";
        wait for 1 ns;
        assert(C_out = "00010110") report "Fail 110" severity error;

        A_in <= "00101100";
        B_in <= "01001001";
        S_in <= "111";
        wait for 1 ns;
        assert(C_out = "01011000") report "Fail 111" severity error;

        A_in <= "00000000";
        B_in <= "00000000";
        S_in <= "000";
        wait;
    end process;
end tb;
