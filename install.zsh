#!/bin/bash

CURRENT_DIR=$(pwd)

source "$CURRENT_DIR/zshlilly.zsh"

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

cp $ZSHLILLY_DIR/zshlilly.zsh $INSTALL_DIR
cp $ZSHLILLY_DIR/README.md $INSTALL_DIR
cp $ZSHLILLY_DIR/LICENSE $INSTALL_DIR

mkdir $INSTALL_DIR/src
mkdir $INSTALL_DIR/docs

cp $ZSHLILLY_DIR/src/*.zsh $INSTALL_DIR/src/
cp $ZSHLILLY_DIR/docs/*.md $INSTALL_DIR/docs/

echo "zshlilly has been installed to $INSTALL_DIR"
