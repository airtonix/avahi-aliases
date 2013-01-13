Avahi Aliases!
==============

Do this:
--------

### Install and setup

    sudo ./install.sh
    #add aliases to /etc/avahi/aliases
    sudo avahi-publish-aliases

### Uninstall

    sudo ./uninstall.sh

### systemd

Included is an installer for a systemd service. I've only tested this on Fedora 17.

    sudo ./install-systemd
    sudo systemctl <start|stop|restart> avahi-alias.serivce

### init.d script

Included is an installer for an /etc/init.d script (tested on Debian Squeeze)

	sudo ./install-init.sh
		

Fedora 13+
----------
Requires dbus-python, avahi-ui-tools
Python bindings seem to have been in avahi-tools pre F13 and have been moved.

Ubuntu 10+, Debian
------------------
Requires python-dbus, python-avahi

