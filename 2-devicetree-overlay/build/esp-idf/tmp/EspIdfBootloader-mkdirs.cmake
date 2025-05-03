# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/andrea/zephyrproject/modules/hal/espressif/components/bootloader/subproject"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/build/bootloader"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/tmp"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/src/EspIdfBootloader-stamp"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/src"
  "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/src/EspIdfBootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/src/EspIdfBootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/andrea/workspace/Zephyr-Dev-with-VSCode/2-devicetree-overlay/build/esp-idf/src/EspIdfBootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
