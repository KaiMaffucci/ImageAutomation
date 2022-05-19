#!/bin/bash

# mount usb drive so we can actually access it
sudo mkdir -p /media/IA_usb
sudo mount /dev/sdb1 /media/IA_usb

# puts files on live os's file system
cd /root/Desktop/
cp -a /media/IA_usb/IA/ /root/Desktop/

# unmount mounted drive, don't need it anymore and it can interfere with further steps
sudo umount /media/IA_usb