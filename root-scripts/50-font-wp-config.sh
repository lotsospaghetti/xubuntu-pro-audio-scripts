#!/bin/bash

mkdir -p /usr/local/share/fonts/ttf/MartianMono
wget -qO /tmp/MartianMono.zip 'https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/MartianMono.zip'
unzip /tmp/MartianMono.zip -d /usr/local/share/fonts/ttf/MartianMono
chmod 644 /usr/local/share/fonts/ttf/MartianMono/*
fc-cache -fv

# wallpaper credit to positron dream [https://www.positrondream.com/]
cp './assets/Sleepless Dream (Final).png' '/usr/share/backgrounds/.'
