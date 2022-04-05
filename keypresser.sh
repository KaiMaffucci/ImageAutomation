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

while [ -n "$(pidof xterm)" ]; do
  sleep 1
done
sleep 10

# keep going with usb plugged in
sleep 3
xdotool key Return

# confirm devices
sleep 3
xdotool key ctrl+c
sleep 12
# +3

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
sleep 1
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
#sleep 3
#xdotool key Return

# select source disk
sleep 3
xdotool key Return
sleep 3
xdotool key Return

# skip file repair check TODO: make it a flag/option
sleep 3
xdotool key Down
sleep 3
xdotool key Return

# shutdown clonezilla TODO: is this the best option? also is it even relevant in the same way anymore?
sleep 3
xdotool key Down
sleep 3
xdotool key Down
sleep 3
xdotool key Return

# starts cloning
sleep 3
xdotool key Return
sleep 3
xdotool key Return
sleep 3
xdotool key y
sleep 3
xdotool key Return
sleep 3
xdotool key y
sleep 3
xdotool key Return

# TODO: wait until it's done - wait command maybe?

# after cloning
sleep 3
xdotool key Return
