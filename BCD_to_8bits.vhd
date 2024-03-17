library ieee;
use ieee.std_logic_1164.all;

entity ckt_BCD is
	port( SW: in std_logic_vector(0 to 3);
	      HEX0,HEX1: out std_logic_vector(0 to 3));
end ckt_BCD;

architecture logica of ckt_BCD is

component display_7seg is
  port (w,x,y,z: in std_logic;
	A,B,C,D,E,F,G: out std_logic);
end component;

component bin_to_bcd is
  port (A3,A2,A1,A0: in std_logic;
	S3,S2,S1,S0: out std_logic);
end component;

  signal aux1 : std_logic_vector(0 to 3);
  signal aux2 : std_logic_vector(0 to 3);

begin 

    U1: bin_to_bcd port map(SW(0),SW(1),SW(2),SW(3),aux2(0), aux2(1), aux2(2), aux2(3));
    U2: bin_to_bcd port map(aux2(0), aux2(1), aux2(2), aux2(3), HEX1(0), HEX1(1), HEX1(2), HEX1(3));


end logica;