library ieee;
use ieee.std_logic_1164.all;

entity Mux4x1por is
	port(
		i0,i1,i2,i3,s0,s1 : in bit;
		saida : out bit
	);
end Mux4x1por;

architecture behav of Mux4x1por is
	signal muXi0i1: bit;
	signal muXi2i3: bit;
	
	component Mux2x1por is
		port( i0,i1,s0 : in bit; saida: out bit);
	end component Mux2x1por;
	
	begin
	mux01 : Mux2x1por port map( i0 => i0, i1 => i1, s0 => s1, saida => muXi0i1);
	mux02 : Mux2x1por port map( i0 => i2, i1 => i3, s0 => s1, saida => muXi2i3);
	
	mux03 : Mux2x1por port map( i0 => muXi0i1, i1 => muXi2i3, s0 => s0, saida => saida);
end architecture behav;