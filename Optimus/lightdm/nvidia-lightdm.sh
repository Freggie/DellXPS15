#!/bin/bash
echo "Enter your own password."
echo
sudo eselect opengl set nvidia

# Removes intel files
sudo rm /etc/lightdm/lightdm.conf
sudo rm /etc/X11/xorg.conf.d/20-intel.conf

# Copies over nvidia files
sudo cp /home/frankie/Scripts/GPU/Nvidia/lightdm.conf /etc/lightdm/lightdm.conf
sudo cp /home/frankie/Scripts/GPU/Nvidia/20-nvidia.conf /etc/X11/xorg.conf.d
echo
echo "Restart for the changes to start."
