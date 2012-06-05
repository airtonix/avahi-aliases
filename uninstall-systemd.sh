#!/bin/sh
SCRIPT_PATH=${0%/*}
. $SCRIPT_PATH/lib/coloured_messages.sh

if [ "$(id -u)" != "0" ]; then
  message "This must be run as root (sudo)" "error"
  exit 1
fi

message "Uninstall Avahi Aliases Service" "header"
systemctl stop avahi-alias.service
systemctl disable avahi-alias.service
rm /usr/lib/systemd/system/avahi-alias.service
systemctl daemon-reload
message "Uninstallation of Avahi-Aliases Done" "success"
