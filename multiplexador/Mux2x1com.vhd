library ieee;
use ieee.std_logic_1164.all;

entity Mux2x1com is
	port(
		i0,i1,s0 : in bit;
		saida : out bit
	);
end Mux2x1com;

architecture behav of Mux2x1com is
	begin
	WITH s0 SELECT	
		saida <= i0 WHEN '0',
					i1 WHEN '1';
end architecture behav;