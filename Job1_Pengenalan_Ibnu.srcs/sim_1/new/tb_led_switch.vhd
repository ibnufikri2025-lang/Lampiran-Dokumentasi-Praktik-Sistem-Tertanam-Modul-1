library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_led_switch is
end tb_led_switch;

architecture Behavioral of tb_led_switch is

    component led_switch_top
        Port (
            sw  : in  STD_LOGIC_VECTOR (15 downto 0);
            led : out STD_LOGIC_VECTOR (15 downto 0)
        );
    end component;

    signal sw  : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal led : STD_LOGIC_VECTOR (15 downto 0);

begin

    uut: led_switch_top
        port map (
            sw  => sw,
            led => led
        );

    stimulus: process
    begin

        -- Pengujian 1
        sw <= "0000000000000000";
        wait for 100 ns;

        -- Pengujian 2
        sw <= "0000000000000011";
        wait for 100 ns;

        -- Pengujian 3
        sw <= "0000000000001111";
        wait for 100 ns;

        -- Pengujian 4
        sw <= "0000000011111111";
        wait for 100 ns;

        -- Pengujian 5
        sw <= "0000000010101010";
        wait for 100 ns;

        wait;
    end process;

end Behavioral;