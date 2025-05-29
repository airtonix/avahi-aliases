# Avahi Aliases

## Install

```sh
sudo apt-get install python-avahi
sudo pip install git+git://github.com/airtonix/avahi-aliases.git
```

## Uninstall

```sh
sudo pip uninstall avahi-aliases
```

## Usage

### Daemon Control

```sh
sudo service avahi-alias start
sudo service avahi-alias restart
sudo service avahi-alias stop
```

### Creating Aliases

1. `sudo nano /etc/avahi/aliases.d/default`
2. insert something.local on a new line
3. save
4. ???
5. profit


## Notes

* aliases must end in `.local`
* One alias per line
* blank lines are ignored
* lines prefixed with `#` are ignored
* you must manually restart the daemon after modifying alias files

# Todo

1. implement `sudo avahi-alias add/remove aliasname`
2. implement `sudo avahi-alias list`

