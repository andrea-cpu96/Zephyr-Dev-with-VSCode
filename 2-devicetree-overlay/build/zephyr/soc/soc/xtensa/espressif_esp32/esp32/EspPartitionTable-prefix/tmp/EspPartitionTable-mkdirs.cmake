# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/andrea/zephyrproject/modules/hal/espressif/components/partition_table"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/build"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/tmp"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp${cfgdir}") # cfgdir has leading slash
endif()
