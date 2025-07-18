begin
  -- The Device Under Test (DUT)
  i_FlipFrop : entity work.T17_FlipFlop(rtl)
  port map (
    Clk => Clk,
    nRst => nRst,
    Input => Input,
    Output => Output);
  -- Process for generating the clock
  Clk <= not Clk after ClockPeriod / 2;
  -- Testbench sequence
  process is
  begin
    -- Take the DUT out of reset
    nRst <= '1';
    wait for 20 ns;
    Input <= '1';
    wait for 22 ns;
    Input <= '0';
    wait for 6 ns;
    Input <= '1';
    wait for 20 ns;
    -- Reset the DUT
    nRst <= '0';
    wait;
  end process;
end architecture;
