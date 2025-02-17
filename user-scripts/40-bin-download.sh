#!/bin/bash

mkdir -p /tmp/archives
mkdir -p $HOME/.local/share/icons
mkdir -p $HOME/.local/share/applications
wget -O /tmp/archives/yabridge.tar.gz "https://github.com/robbert-vdh/yabridge/releases/download/5.1.1/yabridge-5.1.1.tar.gz"
wget -O /tmp/archives/sunvox.zip "https://warmplace.ru/soft/sunvox/sunvox-2.1.2b.zip"
wget -O $HOME/.local/share/icons/sunvox.png "https://warmplace.ru/soft/sunvox/images/icon.png"

tar -xaf /tmp/archives/yabridge.tar.gz --directory=$HOME/.local/bin
unzip /tmp/archives/sunvox.zip -d $HOME/.local/share

cat << EOF >> $HOME/.local/share/applications/sunvox.desktop
[Desktop Entry]
Name=SunVox
Comment=Small, fast and powerful modular synthesizer with pattern-based sequencer (tracker).
Version=1.0
Type=Application
Categories=Audio;AudioVideo
Exec=/home/$(whoami)/.local/share/sunvox/sunvox/linux_x86_64/sunvox
Icon=/home/$(whoami)/.local/share/icons/sunvox.png
Terminal=false
EOF
