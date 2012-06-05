#!/bin/sh
SCRIPT_PATH=${0%/*}
. $SCRIPT_PATH/lib/coloured_messages.sh

if [ "$(id -u)" != "0" ]; then
  message "This must be run as root (sudo)" "error"
  exit 1
fi

message "Install Avahi Aliases Service" "header"
cp ./package/avahi-alias.service /usr/lib/systemd/system/
systemctl daemon-reload

message "Enabling Avahi Aliases Service" "header"
systemctl enable avahi-alias.service

message "Installation of Avahi-Aliases Done" "success"
message "Add aliases to /etc/avahi/aliases"
message "sudo systemctl <start|stop|status> avahi-alias.service"
