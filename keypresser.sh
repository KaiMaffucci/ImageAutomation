#!/bin/bash

# performs keypresses
# TODO: use repetition statements

# device image
sleep 1
xdotool key Return

# local_dev
sleep 1
xdotool key Return
sleep 1

# waits for USB to be plugged in, then proceeds automatically
# TODO: fix
lsblk > lsblkout.txt 2>&1
grepout=$(grep -oh "\w*sdb1\w*" lsblkout.txt)
while [[ ! "$grepout" == *"sdb1"* ]]; do
  sleep 1
  lsblk > lsblkout.txt 2>&1
  grepout=$(grep -oh "\w*sdb1\w*" lsblkout.txt)
done

# keep going with usb plugged in
sleep 3
xdotool key Return

# confirm devices
sleep 3
xdotool key ctrl+c
sleep 16

# sdb1
sleep 1
xdotool key Down
sleep 1
xdotool key Down
sleep 1
xdotool key Down
sleep 1
xdotool key Down
sleep 1
xdotool key Return

# save image
sleep 3
xdotool key Tab
sleep 1
xdotool key Tab
sleep 1
xdotool key Return

# clonezilla displays system disk space usage, press enter to continue
sleep 3
xdotool key Return

# beginner
sleep 1
xdotool key Return

# restoredisk
sleep 1
xdotool key Down
sleep 1
xdotool key Down
sleep 1
xdotool key Return

# TODO if it matters: input proper image name
sleep 4
xdotool key Return

# select source disk
sleep 4
xdotool key Return

# skip file repair check TODO: make it a flag/option
sleep 1
xdotool key Down
sleep 1
xdotool key Return

# shutdown clonezilla
sleep 1
xdotool key Down
sleep 1
xdotool key Down
sleep 1
xdotool key Return

# starts cloning
sleep 1
xdotool key Return
sleep 1
xdotool key Return
sleep 10
xdotool key y
sleep 1
xdotool key Return
sleep 1
xdotool key y
sleep 1
xdotool key Return

# wait until it's done
# TODO: figure out a way to not have to hard-code the timing like this?!
sleep 600

# after cloning
xdotool key Return
sleep 1
sudo reboot