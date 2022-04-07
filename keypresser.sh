#!/bin/bash

# performs keypresses
# TODO: use repetition statements

# device image
sleep 1
xdotool key Return

# local_dev
sleep 1
xdotool key Return

# wait for usb to be plugged in
sleep 1
xterm -n usb_wait -e usb_wait.sh

#while [ -n "$(pidof xterm)" ]; do
#  sleep 1
#done
#sleep 10

# waits for USB to be plugged in, then proceeds automatically
# TODO: need to change while statement condition command to just get sdb1, or just fix it in general, bc something's wrong
lsblk > lsblkout.txt 2>&1
while [ ! "$(grep -q sdb1 lsblkout.txt)" ]; do
  sleep 1
  lsblk > lsblkout.txt 2>&1
done

# keep going with usb plugged in
sleep 3
xdotool key Return

# confirm devices
sleep 3
xdotool key ctrl+c
sleep 15

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
xdotool key Down
sleep 1
xdotool key Tab
sleep 1
xdotool key Tab
sleep 1
xdotool key Return

# what's this again?
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

# select source disk
sleep 1
xdotool key Return
sleep 1
xdotool key Return

# skip file repair check TODO: make it a flag/option
sleep 1
xdotool key Down
sleep 1
xdotool key Return

# shutdown clonezilla TODO: is this the best option? also is it even relevant in the same way anymore?
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
sleep 1
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