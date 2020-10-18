#!/usr/bin/env sh
#
# Description: Alias scripts uninstall
#
# Maintainer: Ivan G. Volkov <i@volkov.work>
#
# URL: https://volkov.work/dev
#

PROJECTDIR=$(pwd)
SRC="aliases"
BINDIR=~/.local/bin

uninstall(){
  rm -fv $BINDIR/kk 
  rm -fv $BINDIR/pp 
  rm -fv $BINDIR/mount.ssh 
  rm -fv $BINDIR/umount.ssh 
}

if [ "$1" = "system" ]; then
	BINDIR=/usr/bin
else
  mkdir -pv $BINDIR
fi

uninstall $BINDIR