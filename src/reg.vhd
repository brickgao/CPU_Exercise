library ieee;
use ieee.std_logic_1164.all;

entity reg is port(
	reset, clk, write, sel: in std_logic;
	d_input: in std_logic_vector(15 downto 0);
	q_output: out std_logic_vector(15 downto 0)
	);
end reg;

architecture a of reg is
begin
	process(reset, clk)
	begin
		if reset = '0' then
			q_output <= x"0000";
		elsif clk'event and clk = '0' then
			q_output <= d_input;
		end if;
	end process;
end a;