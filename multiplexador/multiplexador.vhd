library ieee;
use ieee.std_logic_1164.all;

entity multiplexador is
	port(
		A,B,Sel : in bit;
		S : out bit
	);
end multiplexador;

architecture main of multiplexador is
	--signal mux2x1: bit; -- Linha que recebe a saída da porta and superior
	component Mux2x1com is
		port( i0,i1,s0 : in bit;
				saida: out bit);
	end component Mux2x1com;
	begin
	m21com : Mux2x1com port map( i0 => A, i1 => B, s0 => Sel, saida => S);
	
end architecture main;