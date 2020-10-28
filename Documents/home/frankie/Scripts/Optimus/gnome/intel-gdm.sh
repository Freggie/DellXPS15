#!/bin/bash
echo "Enter your user password."
echo
sudo eselect opengl set xorg-x11

# Removes nvidia files from gdm
sudo rm /etc/gdm/Init/Default
# Removes nvidia files from xorg
sudo rm /etc/X11/xorg.conf.d/20-nvidia.conf

# Copies over intel fies to gdm
sudo cp /home/frankie/Scripts/GPU/Intel/Default /etc/gdm/Init
# Copies over intel files to xorg
sudo cp /home/frankie/Scripts/GPU/Intel/20-intel.conf /etc/X11/xorg.conf.d

echo
echo "Restart for the changes to start."
