if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
#exec sway
fi
