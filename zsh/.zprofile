# Mount encrypted drives on login
~/.mount/mountDrives.sh

# Start sway upon login to tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  XKB_DEFAULT_LAYOUT=us exec sway
fi
