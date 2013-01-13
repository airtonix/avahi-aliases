#!/bin/bash
message(){

	MESSAGE=$1
	LEVEL=$2
	START='\033['
	FINISH='\033[0m'

	BOLD='1;'

	BLACK="30"
	RED="31"
	GREEB="32"
	YELLOW="33"
	BLUE="34"
	MAGENTA="35"
	CYAN="36"
	GREY="37"

	BGBLACK="40"
	BGRED="41"
	BGGREEB="42"
	BGYELLOW="43"
	BGBLUE="44"
	BGMAGENTA="45"
	BGCYAN="46"
	BGGREY="47"

	case $LEVEL in
		"header" )
			COLOURS="$BOLD;$GREY;${BGBLUE}m"
			;;
		"error" )
			COLOURS="$GREY;${BGRED}m"
			;;
		"warning" )
			COLOURS="$BLACK;${BGYELLOW}m"
			;;
		"debug" )
			COLOURS="${YELLOW}m"
			;;
		"result" )
			COLOURS="${CYAN}m"
			;;
		"success" )
			COLOURS="${GREEN}m"
			;;
		"choice" )
			COLOURS="${BLUE}m"
			;;
		* )
			COLOURS="${GREY}m"
			;;
	esac

	echo -e "${START}${COLOURS} ${MESSAGE} ${FINISH}"
	tput sgr0
}

