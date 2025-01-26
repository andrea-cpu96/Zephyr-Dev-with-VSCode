# Zephyr in VSCode

## Description

This repository contains a series of examples on how to work with Zephyr RTOS using VSCode as the IDE. The examples aim to help developers set up their development environment, build, flash, and debug Zephyr-based applications.

## Examples

1. **environment-setup**: This example sets up the `.vscode` directory with tasks for building, flashing, and debugging a sample application called "blinky."

## Prerequisites

Before you can use the examples in this repository, you need to have the Zephyr development environment set up. This includes:

- Zephyr RTOS installed on your system
- `west` meta-tool installed
- Zephyr SDK installed
- Visual Studio Code installed with the necessary extensions

## environment-setup Example

The `environment-setup` example demonstrates how to configure VSCode to build, flash, and debug a Zephyr application. It includes the following:

- **.vscode/tasks.json**: Defines tasks for building, flashing, and debugging the "blinky" application.
- **activate.sh**: A script to activate the virtual envirorment (not present).

### Build

To build the "blinky" application, run the "Build" task in VSCode. This task uses the `west` tool to compile the application.

### Flash

To flash the "blinky" application to your target board, run the "Flash" task in VSCode. This task uses `openocd` to program the board.

### Debug

To debug the "blinky" application, you can configure and run a debug session in VSCode.

## License

Distributed under the MIT License