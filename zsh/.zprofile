# Mount encrypted drives on login
~/.mount/mountDrives.sh

# Start sway upon login to tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	
	# If on main PC set US keyboard layout, else use GB layout
	if [[ "$(hostname)" == "icarus" ]]; then
		XKB_DEFAULT_LAYOUT=us exec sway
	else
		XKB_DEFAULT_LAYOUT=gb exec sway
	fi

fi  
