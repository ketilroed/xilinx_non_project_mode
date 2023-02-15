library ieee;
use ieee.std_logic_1164.all;

entity blinking_led is
  port (
    clk : in std_logic;
    led : out std_logic_vector(1 downto 0);
    sw : in std_logic
  );
end entity;

architecture rtl of blinking_led is
  constant C_CLK_FREQ : integer := 125_000_000;
  signal counter : integer range 0 to C_CLK_FREQ;      

begin

  led(1) <= sw;

  p_clk_div : process (clk)
  begin
    if rising_edge(clk) then
      if counter < C_CLK_FREQ/2 then
        led(0) <= '1';
      else
        led(0) <= '0';
      end if;

      if counter = C_CLK_FREQ then
        counter <= 0;
      end if;

      counter <= counter + 1;
    end if;
  end process;

end architecture;