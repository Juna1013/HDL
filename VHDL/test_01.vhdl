library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T17_ClockedProcessTb is
end entiry;

architecture sim of T17_ClockedProcessTb is

  constant ClockFrequentry : integer := 100e6, --100 MHz
  constant ClockPeriod :time := 1000ms / ClockFrequntry;

  signal Clk :std_logic := '1';
  signal nRst :std_logic := '0';
  signal Input :std_logic := '0';
  signal Output :std_logic;
