#!/bin/bash

#Update and Upgrade
echo "Running Update"
apt-get update && apt-get upgrade

basePrograms=(xorg xinit lightdm i3 i3blocks xfce4-terminal)
controlPrograms=(wicd xfce4-power-manager xbacklight pulseaudio alsa-utils)

#Base Install
apt-get install xorg xinit lightdm i3 i3blocks xfce4-terminal 



