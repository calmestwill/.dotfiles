#!/bin/sh

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'

echo -e "\n${YELLOW}Welcome back!"
if [[ "$(hostname)" == "icarus" ]]; then
	echo -e "${CYAN}Mounting encrypted data drive (Andromeda)..."
	sudo dislocker /dev/sdb1 -u"$(cat ~/.mount/andromedaPassphrase.txt)" -- /media/bitlockerdecrypt/Andromeda
	echo "Drive decrypted, mounting..."
	sudo mount -o loop,rw /media/bitlockerdecrypt/Andromeda/dislocker-file /media/Andromeda

	echo -e "\nMounting encrypted data drive (Gemini)..."
	sudo dislocker /dev/sdd1 -u"$(cat ~/.mount/geminiPassphrase.txt)" -- /media/bitlockerdecrypt/Gemini
	echo "Drive decrypted, mounting..."
	sudo mount -o loop,rw /media/bitlockerdecrypt/Gemini/dislocker-file /media/Gemini

	echo -e "\n${GREEN}Success!"
elif [[ "$(hostname)" == "daedalus" ]]; then
	echo -e "${CYAN}Mounting encrypted data partition..."
	sudo veracrypt -t /dev/nvme0n1p7 -p "$(cat ~/.mount/pegasusPassphrase.txt)" -k ~/.mount/Pegasus /media/Pegasus --non-interactive
	echo -e "\n${GREEN}Success!"
else
	echo -e "No drives for hostname. Have you set the correct hostname? \n"
fi
