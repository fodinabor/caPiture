#!/bin/bash

mkdir -p ~/.local/bin
cp bin/* ~/.local/bin

grep startcapiture $HOME/.profile &> /dev/null
if [ $? != 0 ]; then
    echo "startcapiture &" >> $HOME/.profile
fi
