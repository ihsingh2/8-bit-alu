library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        S: in std_logic_vector (2 downto 0);
        C: out std_logic_vector (7 downto 0));
end ALU;

architecture Structural of ALU is

signal D,E,F,G,H,I,J,K: std_logic_vector (7 downto 0);

component and_gate is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end component;

component or_gate is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end component;

component xor_gate is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end component;

component not_gate is
    port(
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0));
end component;

component adder is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end component;

component subtractor is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        C: out std_logic_vector (7 downto 0));
end component;

component right_shift is
    port(
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0));
end component;

component left_shift is
    port(
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0));
end component;

component MUX is
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
end component;

begin
    v0: and_gate port map(A,B,D);
    v1: or_gate port map(A,B,E);
    v2: xor_gate port map(A,B,F);
    v3: not_gate port map(A,G);
    v4: adder port map(A,B,H);
    v5: subtractor port map(A,B,I);
    v6: right_shift port map(A,J);
    v7: left_shift port map(A,K);
    v8: MUX port map(D,E,F,G,H,I,J,K,S,C);
end Structural;
