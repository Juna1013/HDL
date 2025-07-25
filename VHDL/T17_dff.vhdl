library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T17_FlipFrop is
port (
  Clk :in std_logic;
  nRst :in std_logic; -- Negative reset
  Input :in std_logic;
  Output :out std_logic);
end entity;

architecture rtl T17_FlipFrop is
begin
  -- Flip-frop with synchronized reset
  process(Clk) is
  begin
    if rising_edge(Clk) then
      if nRst = '0' then
        Output <= '0';
      else
        Output <= Input;
      end if;
    end if;
  end process;

end architecture
