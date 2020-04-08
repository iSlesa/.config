#!/bin/bash

image=~/.config/i3/i3lock/i3lock.png
lock=~/.config/i3/i3lock/lock.png
screen=~/.config/i3/i3lock/lockscreen.png
rm $image -f
scrot $image
#mogrify -colorspace Gray $image
#composite -blend 50 $screen $image $image
mogrify -blur 5x9+90 -gravity center -draw "image over 0,0 0,0 '$lock'" $image
convert $image -gravity center -font ubuntu -fill white -pointsize 22 -annotate +0+100 'Enter password to unlock' $image 
i3lock -u -b -p default -i $image
