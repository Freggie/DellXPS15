#!/bin/bash
echo "Enter your user password."
echo
sudo eselect opengl set xorg-x11

# Removes nvidia files
sudo rm /etc/lightdm/lightdm.conf
sudo rm /etc/X11/xorg.conf.d/20-nvidia.conf

# Copies over intel fies
sudo cp /home/frankie/Scripts/GPU/Intel/lightdm.conf /etc/lightdm/lightdm.conf
sudo cp /home/frankie/Scripts/GPU/Intel/20-intel.conf /etc/X11/xorg.conf.d
echo
echo "Restart for the changes to start."
