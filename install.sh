#!/bin/sh

SCRIPT_PATH=${0%/*}
. $SCRIPT_PATH/lib/coloured_messages.sh

if [ "$(id -u)" != "0" ]; then
  message "This must be run as root (sudo)" "error"
  exit 1
fi

message "Install Avahi Aliases Manager" "header"
for file in `ls ./package/*`;do
	message "${file}"
	chown root:root ${file}
	chmod u=rwx,go=rx ${file}
	cp ${file} /usr/bin/
done

message "Making avahi-aliases list directory" "header"
message "Use this directory to place individual lists of avahi-aliases."
mkdir /etc/avahi/aliases.d/

message "Making central avahi-aliases file" "header"
touch /etc/avahi/aliases

message "Installation of Avahi-Aliases Done" "success"

