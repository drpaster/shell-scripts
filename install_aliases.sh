#!/usr/bin/env sh
#
# Description: Alias scripts install
#
# Maintainer: Ivan G. Volkov <i@volkov.work>
#
# URL: https://volkov.work/dev
#

PROJECTDIR=$(pwd)
SRC="aliases"
BINDIR=~/.local/bin

install(){
  cp -iv $PROJECTDIR/$SRC/* $BINDIR/ 
  chmod -Rv 755 $BINDIR/kk 
  chmod -Rv 755 $BINDIR/pp 
  chmod -Rv 755 $BINDIR/mount.ssh 
  chmod -Rv 755 $BINDIR/umount.ssh 
}

if [ "$1" = "system" ]; then
	BINDIR=/usr/bin
else
  mkdir -pv $BINDIR
fi

install $BINDIR