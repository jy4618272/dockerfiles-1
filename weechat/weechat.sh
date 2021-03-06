#!/usr/bin/env bash
# Odd E. Ebbesen <oddebb@gmail.com>, 2014-12-31 02:34:13

set -e

WC_TERM=${WTERM:-xterm}
WC_LANG=${WLANG:-$LANG}
WC_USER=wc
#if [ -n $UID ]; then
#	WC_UID=$(id -u $WC_USER)
#	if [ $WC_UID -ne $UID ]; then
#		usermod -u $UID $WC_USER
#		chown -R $WC_USER /home/$WC_USER
#	fi
#fi
export LANG=$WC_LANG
export TERM=$WC_TERM
#sudo -E -u $WC_USER -H /usr/bin/weechat-curses $*
exec gosu $WC_USER /usr/bin/weechat-curses $*
