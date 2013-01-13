#!/bin/sh

SCRIPT_PATH=${0%/*}
. $SCRIPT_PATH/lib/coloured_messages.sh

if [ "$(id -u)" != "0" ]; then
  message "This must be run as root (sudo)" "error"
  exit 1
fi

PREFIX="/usr"

BINDIR="$PREFIX/bin"
mkdir -p "$BINDIR"

BIN_FILES="avahi-add-alias avahi-list-aliases avahi-publish-aliases avahi-publish-domain-alias avahi-remove-alias"

message "Install Avahi Aliases Manager" "header"
for file in $BIN_FILES ;do
	SOURCE="$SCRIPT_PATH/package/$file"
	DESTINATION="$BINDIR/$file"
	
	message "$SOURCE"
	cp "${SOURCE}" "$DESTINATION"

	chown root:root "$DESTINATION"
	chmod u=rwx,go=rx "$DESTINATION"
done

message "Making avahi-aliases list directory" "header"
message "Use this directory to place individual lists of avahi-aliases."
mkdir /etc/avahi/aliases.d/

message "Making central avahi-aliases file" "header"
touch /etc/avahi/aliases

message "Installation of Avahi-Aliases Done" "success"

