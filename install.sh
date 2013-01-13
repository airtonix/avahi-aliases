#!/bin/sh

SCRIPT_PATH=${0%/*}
. $SCRIPT_PATH/lib/coloured_messages.sh

message "Install Avahi Aliases Manager" "header"
for file in `ls ./package/*`;do
	message "${file}"
	sudo chown root:root ${file}
	sudo chmod u=rwx,go=rx ${file}
	sudo cp ${file} /usr/bin/
done

message "Install init script" "header"
sudo cp avahi-aliases /etc/init.d
sudo chown root:root /etc/init.d/avahi-aliases
sudo chmod u=rwx,go=rx /etc/init.d/avahi-aliases

message "Making avahi-aliases list directory" "header"
message "Use this directory to place individual lists of avahi-aliases."
sudo mkdir /etc/avahi/aliases.d/

message "Making central avahi-aliases file" "header"
sudo touch /etc/avahi/aliases

message "Installation of Avahi-Aliases Done" "success"

