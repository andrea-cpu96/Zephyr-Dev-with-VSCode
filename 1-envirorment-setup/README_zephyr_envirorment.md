# Setting Up a Zephyr Workspace

## Description

This document provides a step-by-step guide on how to set up a directory as a workspace for the Zephyr real-time operating system (RTOS). The setup involves linking the Zephyr project directory and configuring the necessary environment variables.

## Prerequisites

- Zephyr RTOS installed on your system
- `west` meta-tool installed
- A directory where you want to set up the Zephyr workspace

## Step 1: Define Zephyr envirorment variables

1. Open the bash configuration file with this command:

   ```sh
   nano ~/.bashrc

2. Add the following configurations at the end of the file    

   ```sh
   export ZEPHYR_BASE=/home/andrea/zephyrproject/zephyr
   export ZEPHYR_SDK_INSTALL_DIR=/root
   export PATH=$PATH:/root/zephyr-sdk-0.17.0/sysroots/x86_64-pokysdk-linux/usr/bin

## Step 2: Activate the virtual envirorment

1. Activate the virtuale envirorment with this command:

   ```sh
   source ./path-to-.venv-in-your-Zephyr-workspace/bin/activate

## Step 3: Create a Symlink to the Zephyr Project Directory

1. Navigate to the directory where you want to set up the Zephyr workspace:
   ```sh
   cd /path/to/your/workspace
2. Enter the following command to link the zephyr repository
   ```sh
   ln -s ${ZEPHYR_BASE} zephyr
