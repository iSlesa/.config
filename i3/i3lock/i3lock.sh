#!/bin/bash

image=~/.config/i3/i3lock/i3lock.png
lock=~/.config/i3/i3lock/lock.png
rm $image -f
scrot $image
mogrify -colorspace Gray $lock
mogrify -blur 5x9+90 -gravity center -draw "image over 0,0 0,0 '$lock'" $image
#composite -gravity center $lockicon  $image $image
i3lock -u -b -p default -i $image
