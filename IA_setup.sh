#!/bin/bash

# mount usb drive so we can actually access stuff
sudo fdisk -l
sudo mkdir -p /media/IA_usb
sudo mount /dev/sdb1 /media/IA_usb

# puts files on live os's file system
cd /root/Desktop/
mkdir ImageAutomation
cd ImageAutomation
cp -a /media/sdb1/ImageAutomation/. /root/Desktop/ImageAutomation

# just so you can take a look at standard output, might remove later
sleep 3
