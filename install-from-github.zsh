#!/bin/bash

wget "https://github.com/MarkNenadov/zshlilly/archive/master.zip"
unzip master.zip

CURRENT_DIR=$(pwd)
chmod a+x "$CURRENT_DIR/zshlilly-master/zshlilly.zsh"
source "$CURRENT_DIR/zshlilly-master/zshlilly.zsh"

if [ $# -ge 1 ]; then
    INSTALL_BASE="$1"
else
    INSTALL_BASE=/usr/local/lib
fi

if ! dir_exists $INSTALL_BASE; then
	mkdir $INSTALL_BASE
fi

INSTALL_DIR=$INSTALL_BASE/zshlilly/


if dir_exists $INSTALL_DIR; then
        rm -rf $INSTALL_DIR
fi

mkdir $INSTALL_DIR

cp $CURRENT_DIR/zshlilly-master/zshlilly.zsh $INSTALL_DIR
cp $CURRENT_DIR/zshlilly-master/README.md $INSTALL_DIR
cp $CURRENT_DIR/zshlilly-master/LICENSE $INSTALL_DIR

mkdir $INSTALL_DIR/src
cp $CURRENT_DIR/zshlilly-master/src/* $INSTALL_DIR/src/

rm -rf zshlilly-master
rm master.zip

echo "zshlilly has been downloaded from github and installed to $INSTALL_DIR"
