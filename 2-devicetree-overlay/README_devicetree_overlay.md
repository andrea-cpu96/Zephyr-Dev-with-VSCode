# Zephyr DeviceTree Overlays: Customizing Hardware Configuration

In Zephyr, DeviceTree overlays allow you to modify the hardware configuration of a board without altering the base board files. This is particularly useful for custom hardware setups or when adapting existing boards to new requirements.

## 📁 Creating a Board-Specific Overlay

To create a DeviceTree overlay for a specific board, follow these steps:

1. **Create the Overlay File**: In your application's directory, create a file named `<BOARD_NAME>.overlay`. For example, if your target board is `esp32_devkitc_wroom`, name the file `esp32_devkitc_wroom.overlay`. This file can be used to update board specific devicetree files.

2. **Create an app Overlay File (optional)**: In your application's directory, instead of using a specific board overlay file, you can add a generic global overlay named `app.overlay`. This file can be use to apply changes to the devicetree that are common to all the boards.  

3. **Define Hardware Modifications**: Inside this overlay file, specify the hardware changes you wish to apply. For instance, to enable a GPIO connected to an LED, you might add:

   ```dts
    / {
        aliases {
            led0 = &green_led_0;
        };

        green_led_0: led_0 {
            compatible = "gpio-leds";
            gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
            status = "okay";
        };
    };
