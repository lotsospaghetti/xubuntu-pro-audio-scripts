#!/bin/bash

apt update && apt upgrade 

# Xfce4/desktop
apt install -y \
xfce4-goodies \
xfce4-power-manager \
fonts-atkinson-hyperlegible \
xarchiver \
orage \
gigolo \
vlc

# Terminal utilities
apt install -y \
fish \
tealdeer \
btop \
rsync

# kitty (optional)
apt install \
kitty

# i3 (optional)
apt install \
i3-wm \
picom \

# Audio config
apt install -y \
ubuntustudio-pipewire-config \
qpwgraph \
cpupower-gui \
ffmpeg \

# QEMU
apt install -y \
qemu-system

# App repository stuff
apt install -y \
extrepo
flatpak

# Compiler utils
apt install -y \
git \
build-essential \
libncurses5-dev \
libncursesw50dev \
libportmidi-dev

# Audio plugins
apt install -y \
lsp-plugins-vst3 \
dragonfly-reverb-vst3 \
zynaddsubfx-vst \
hydrogen \
geonkick \
carla \
ableton-link-utils \
klystrack \
sox
