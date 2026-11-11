library ieee;
use ieee.std_logic_1164.all;

entity multiplexador is
	port(
		A,B,C,D, Se0, Se1 : in bit;
		Sc, Sp, S4 : out bit
	);
end multiplexador;

architecture main of multiplexador is
	component Mux2x1com is
		port( i0,i1,s0 : in bit;
				saida: out bit);
	end component Mux2x1com;
	
	component Mux2x1por is
		port( i0,i1,s0 : in bit;
				saida: out bit);
	end component Mux2x1por;
	
	component Mux4x1por is
		port(i0,i1,i2,i3,s0,s1 : in bit;
			saida : out bit);
	end component Mux4x1por;
	
	begin
	m21com : Mux2x1com port map( i0 => A, i1 => B, s0 => Se0, saida => Sc);
	m21por : Mux2x1por port map( i0 => A, i1 => B, s0 => Se0, saida => Sp);
	
	m41por : Mux4x1por port map( i0 => A, i1 => B, i2 => C,i3 => D,s0 => Se0, s1=> Se1, saida => S4);
end architecture main;