# Connecting a USB Device to WSL using usbip

## Description

This document provides a step-by-step guide on how to connect a USB device to a WSL (Windows Subsystem for Linux) environment using `usbip`.

## Prerequisites

Make sure you have the following tools installed on your system:

- Windows Subsystem for Linux (WSL) configured and running
- `usbipd-win` installed on your Windows system
- `USBIP` extension for Visual Studio Code installed

## Installing usbipd-win

1. Download the latest version of `usbipd-win` from the GitHub repository: [usbipd-win](https://github.com/dorssel/usbipd-win).
2. Follow the instructions to install `usbipd-win` on your Windows system.
3. Add the `usbipd-win` installation directory to the system PATH. For example, `C:\Program Files\usbipd-win\`.

## Connecting the USB Device

1. Connect the USB device to your PC's USB port.
2. Open a command prompt with administrative privileges and list the available USB devices with the following command:
   ```sh
   usbipd wsl list
3. Bind the USB device with the following command:
    ```sh
    usbipd bind --busid 1-3
4. In VSCode, click on the "Attach" tab and select your device USB