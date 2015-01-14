Avahi Aliases [![Build Status](https://travis-ci.org/till/avahi-aliases.svg?branch=topics%2Fmake-it-run)](https://travis-ci.org/till/avahi-aliases)
=============

Copyright 2013 Zenobius Jiricek

This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License. To view a copy of this license, visit:
	http://creativecommons.org/licenses/by-sa/3.0/.

Basically:
 1. You can use this for commerical and personal projects.
 2. You must give me credit in your product.
 3. If you alter, transform, or build upon this work, you may
    distribute the resulting work only under the same or similar
    license to this one.

But you should really read the full liscense :

	http://creativecommons.org/licenses/by-sa/3.0/

# Please note

This fork is on [github.com/till](https://github.com/till) and actually **maintained**. I currently target Vagrant with Ubuntu 14.04 (LTS) and Python 2.7 to keep this service running there.

All additions are welcome. :)

# Install

```
sudo apt-get install python-avahi python-pip
sudo pip install git+git://github.com/till/avahi-aliases.git
```

## Uninstall

```
sudo pip uninstall avahi-aliases
```

# Usage

## Daemon Control (upstart):

```
	sudo start avahi-aliases
	sudo restart avahi-aliases
	sudo stop avahi-aliases
```

## Creating Aliases

1. `sudo nano /etc/avahi/aliases.d/default`
2. insert something.local on a new line
3. save
4. ???
5. profit

Notes:
	* aliases must end in `.local`
	* One alias per line
	* blank lines are ignored
	* lines prefixed with `#` are ignored
	* you must manually restart the daemon after modifying alias files

## Automation

See the following cookbooks to get an idea how automation around this service works:
https://github.com/till/easybib-cookbooks/tree/master/avahi