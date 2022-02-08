#!/usr/bin/env bash

sudo apt-get purge nvidia-*
sudo apt-get update
sudo apt-get autoremove

recommended=$(ubuntu-drivers devices | grep 'recommended')
echo $recommended

# Set comma as delimiter
IFS='-'

#Read the split words into an array based on comma delimiter
read -ra splittedWord <<< "$recommended"

#pipe splittedWord to version
version=${splittedWord[2]}

#Validate if version is integer
if ! [ "$version" -eq "$version" ] 2> /dev/null
then
    echo "Invalid version detected! : exiting, try manually inputting commands"
    exit 1
else
     echo "Version validated!"
fi

sudo apt install libnvidia-common-$version
sudo apt install libnividia-gl-$version
sudo apt install nvidia-driver-$version
sudo reboot
