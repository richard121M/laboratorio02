library ieee;
use ieee.std_logic_1164.all;

entity multiplexador is
	port(
		A,B,C : in bit;
		S1,S2 : out bit
	);
end multiplexador;

architecture main of multiplexador is
	begin
	S1 <= A and B and C;
	S2 <= A or B or C;
end architecture main;