#!/bin/bash
#IPADDRESS=`ifconfig | head -n2 | tail -n1 | awk '{print $2}' | awk -F : '{print $2}'`
#HOSTNAME=`avahi-resolve-host-name -a  | awk '{ print $2 }'`
SCRIPT_PATH=${0%/*}
. $SCRIPT_PATH/lib/coloured_messages.sh

if [ "$(id -u)" != "0" ]; then
  message "This must be run as root (sudo)" "error"
  exit 1
fi

message "Uninstall Avahi Aliases Manager" "header"
for file in `ls ./package/*`;do
  F=`basename ${file}`
  rm /usr/bin/${F}
done

message "Removing avahi-aliases list directory" "header"
rm -rf /etc/avahi/aliases.d/

message "Removing central avahi-aliases file" "header"
rm -f /etc/avahi/aliases
#message "Fill this with aliases (one per line) to ${HOSTNAME}" "result"

message "Uninstallation of Avahi-Aliases Done" "success"

