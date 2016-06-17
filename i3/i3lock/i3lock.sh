#!/bin/bash

image=~/.config/i3/i3lock/i3lock.png
lock=~/.config/i3/i3lock/lock.png
screen=~/.config/i3/i3lock/lockscreen.png
#this=~/.config/i3/i3lock/yolo.png
rm $image -f
scrot $image
#mogrify -colorspace Gray $lock
composite -gravity center -blend 50 $screen $image $image
mogrify -blur 5x9+90 -gravity center -draw "image over 0,0 0,0 '$lock'" $image
i3lock -u -b -p default -i $image
