#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Error: You must provide a hardware layer as argument"
    exit 1
fi

#move into the scripts folder if you're not there already
cd scripts &>/dev/null

#move to the core folder
cd ../core

if [ "$1" == "blank" ]; then
    echo "Activating Blank driver"
    cp ./hardware_layers/blank.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo win > ../scripts/openplc_platform
    echo blank > ../scripts/openplc_driver
    
elif [ "$1" == "blank_linux" ]; then
    echo "Activating Blank driver"
    cp ./hardware_layers/blank.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo linux > ../scripts/openplc_platform
    echo blank_linux > ../scripts/openplc_driver
    
elif [ "$1" == "fischertechnik" ]; then
    echo "Activating Fischertechnik driver"
    cp ./hardware_layers/fischertechnik.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo rpi > ../scripts/openplc_platform
    echo fischertechnik > ../scripts/openplc_driver

elif [ "$1" == "pixtend" ]; then
    echo "Activating PiXtend driver"
    cp ./hardware_layers/pixtend.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo rpi > ../scripts/openplc_platform
    echo pixtend > ../scripts/openplc_driver

elif [ "$1" == "pixtend_2s" ]; then
    echo "Activating PiXtend 2S driver"
    cp ./hardware_layers/pixtend2s.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo rpi > ../scripts/openplc_platform
    echo pixtend_2s > ../scripts/openplc_driver

elif [ "$1" == "rpi" ]; then
    echo "Activating Raspberry Pi driver"
    cp ./hardware_layers/raspberrypi.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo rpi > ../scripts/openplc_platform
    echo rpi > ../scripts/openplc_driver

elif [ "$1" == "rpi_old" ]; then
    echo "Activating Raspberry Pi 2011 driver"
    cp ./hardware_layers/raspberrypi_old.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo rpi > ../scripts/openplc_platform
    echo rpi_old > ../scripts/openplc_driver

elif [ "$1" == "simulink" ]; then
    echo "Activating Simulink driver"
    cp ./hardware_layers/simulink.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo win > ../scripts/openplc_platform
    echo simulink > ../scripts/openplc_driver
    
elif [ "$1" == "simulink_linux" ]; then
    echo "Activating Simulink driver"
    cp ./hardware_layers/simulink.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo linux > ../scripts/openplc_platform
    echo simulink_linux > ../scripts/openplc_driver

elif [ "$1" == "unipi" ]; then
    echo "Activating UniPi 1.1 driver"
    cp ./hardware_layers/unipi.cpp ./hardware_layer.cpp
    echo "Setting Platform"
    echo rpi > ../scripts/openplc_platform
    echo unipi > ../scripts/openplc_driver

else
    echo "Error: Invalid hardware layer"
fi