# Devicetree in Zephyr

## Overview
The devicetree is a structured description of hardware used in Zephyr. It consists of two main types of files:

### 1) Devicetree Sources (`.dts` and `.dtsi`)
- **`.dts` files** define the hardware structure at a high level, including microcontroller peripheral configurations.
- **`.dtsi` files** provide a lower-level description, specifying memory locations for microcontroller peripherals.
- `dts` files include `dtsi` files to create a complete hardware definition.

### 2) Devicetree Bindings (`.yaml`)
- Bindings describe devicetree nodes, such as property names and possible values.
- You refer to a specific binding file with dedicated keywords, for example: 
  ```yaml
  compatible = "gpio-leds"

## Final Devicetree File
- The **final devicetree file** is called `zephyr.dts` and is found inside the **build folder**.

## Overlay Files (`.overlay`)
- There is another type of devicetree file with the `.overlay` extension.
- **Overlay files** should be placed in the **application folder** and are used to **overwrite the underlying `.dts`** file to enable **customized configurations**.
