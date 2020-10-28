#!/bin/bash
echo "Enter your own password."
echo
sudo eselect opengl set nvidia

# Removes intel files from gdm
sudo rm /etc/gdm/Init/Default
# Removes intel files from xorg
sudo rm /etc/X11/xorg.conf.d/20-intel.conf

# Copies over nvidia files to gdm
sudo cp /home/frankie/Scripts/GPU/Nvidia/Default /etc/gdm/Init
# Copies over nvidia files to xorg
sudo cp /home/frankie/Scripts/GPU/Nvidia/20-nvidia.conf /etc/X11/xorg.conf.d

echo
echo "Restart for the changes to start."
