#!/bin/sh
SCRIPT_PATH=${0%/*}
. $SCRIPT_PATH/lib/coloured_messages.sh

if [ "$(id -u)" != "0" ]; then
  message "This must be run as root (sudo)" "error"
  exit 1
fi

message "Install Avahi Aliases init script" "header"
cp avahi-aliases /etc/init.d
chown root:root /etc/init.d/avahi-aliases
chmod u=rwx,go=rx /etc/init.d/avahi-aliases

message "Enabling Avahi Aliases Service" "header"
update-rc.d -f avahi-aliases defaults

message "Installation of Avahi-Aliases Done" "success"
message "Add aliases to /etc/avahi/aliases"
