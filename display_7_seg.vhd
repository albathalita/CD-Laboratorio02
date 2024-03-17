library ieee;
use ieee.std_logic_1164.all;

entity display_7seg is
    port (w,x,y,z: in  std_logic;
          A,B,C,D,E,F,G: out std_logic);
end display_7seg;

architecture log of display_7seg is

begin
    A <= (not(w) and y) or (x and y) or (w and not(z)) or (not(x) and not(z)) or (not(w) and x and z) or (w and not(x) and not(y));
    B <= (not(x) and not(y)) or (not(x) and not(z)) or (not(w) and not(y) and not(z)) or (not(w) and y and z) or (w and not(y) and z);
    C <= (not(w) and x) or (w and not(x)) or (not(y) and z) or (not(w) and not(y)) or (not(w) and z);
    D <= (w and not(y)) or (x and y and not(z)) or (not(x) and y and z) or (not(w) and not(x) and not(z)) or (x and not(y) and z);
    E <= (w and x) or (y and not(z)) or (w and y) or (w and not(z)) or (not(x) and not(z));
    F <= (w and not(x)) or (not(y) and not(z)) or (x and not(z)) or (w and y) or (not(w) and x and not(y));
    G <= (w and not(x)) or (y and not(z)) or (w and z) or (not(x) and y) or (not(w) and x and not(y));
end log;