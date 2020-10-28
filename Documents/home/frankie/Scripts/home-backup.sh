#!/bin/sh

tar --exclude=".*" --exclude="/home/frankie/Documents/tor-browser" --exclude="/home/frankie/Downloads" --exclude="/home/frankie/Documents/Games" --exclude="/home/frankie/Documents/Diablo\ II" --exclude="/home/frankie/Documents/Square\ Enix" --exclude="/home/frankie/My\ Games" --exclude="/home/frankie/Documents/Android" --exclude="/home/frankie/Documents/StarCraft\ II" --exclude="/home/frankie/Documents/My\ Games" --exclude="/home/frankie/Documents/BACKUP" --exclude="/home/frankie/Documents/ISOs" --exclude="/home/frankie/Documents/PlayOnLinux\'s\ virtual\ drive" -czvf /home/frankie/Documents/BACKUP/backup.tar.gz /home/frankie 

# Emails backup file to me
thunderbird -compose to="fformicola89@gmail.com",subject="BACKUP",body="This is your backup",attachment="file://$(ls /home/frankie/Documents/BACKUP/*.tar.gz)"

# Emails alex
thunderbird -compose "to='aellis1479@gmail.com',subject='Your Gay',body='HA HA!'"

