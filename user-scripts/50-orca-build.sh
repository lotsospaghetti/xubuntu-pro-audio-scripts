#!/bin/bash

mkdir -p $HOME/.local/source
git clone https://github.com/hundredrabbits/Orca-c.git $HOME/.local/source/Orca-c
cd $HOME/.local/source/Orca-c
make release
mv build/orca $HOME/.local/bin
make clean

wget -O $HOME/.local/share/icons/orca.png "https://raw.githubusercontent.com/hundredrabbits/100r.co/master/media/content/characters/orca.hello.png"
cat << EOF >> $HOME/.local/share/applications/orca.desktop
[Desktop Entry]
Name=Orca
Description=A two-dimensional esoteric programming language in which every letter of the alphabet is an operator
Version=1.0
Type=Application
Categories=Audio;AudioVideo
Exec=/home/$(whoami)/.local/bin/orca
Icon=/home/$(whoami)/.local/share/icons/orca.png
Terminal=true
EOF
